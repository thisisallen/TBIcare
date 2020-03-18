//
//  AppDelegate.swift
//  UTA-TBIcare
//
//  Created by Ammar AlTahhan on 31/08/2019.
//  Copyright © 2019 Ammar AlTahhan. All rights reserved.
//

import UIKit
import HealthKit
import IQKeyboardManagerSwift
import Firebase
import BackgroundTasks
import AWSAppSync
import AWSMobileClient


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var appSyncClient: AWSAppSyncClient?
    
    static var shared: AppDelegate {
        return (UIApplication.shared.delegate as! AppDelegate)
    }

    var window: UIWindow?
    
    var watchManager: WatchConnectivityManager!

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        
        do {
            // You can choose the directory in which AppSync stores its persistent cache databases
            let cacheConfiguration = try AWSAppSyncCacheConfiguration()

            // AppSync configuration & client initialization
            let appSyncServiceConfig = try AWSAppSyncServiceConfig()
            let appSyncConfig = try AWSAppSyncClientConfiguration(appSyncServiceConfig: appSyncServiceConfig,
                                                                  cacheConfiguration: cacheConfiguration)
            appSyncClient = try AWSAppSyncClient(appSyncConfig: appSyncConfig)
            print("Initialized appsync client.")
        } catch {
            print("Error initializing appsync client. \(error)")
        }
        
        return AWSMobileClient.sharedInstance().interceptApplication(application, didFinishLaunchingWithOptions:launchOptions)
        
        IQKeyboardManager.shared.enable = true
        
        requestAccessToHealthKit()
        
        watchManager = WatchConnectivityManager(withStore: CarePlanStoreManager.sharedCarePlanStoreManager.store)
        
        FirebaseApp.configure()
        
        if #available(iOS 13.0, *) {
            BGTaskScheduler.shared.register(forTaskWithIdentifier: "com.utatbicare.upload_data", using: nil) { (task) in
                self.handleUploadDataTask(task as! BGProcessingTask)
            }
        }
        
        return true
    }
    
    //Auth
    func application(_ application: UIApplication, open url: URL,
            sourceApplication: String?, annotation: Any) -> Bool {

        return AWSMobileClient.sharedInstance().interceptApplication(
            application, open: url,
            sourceApplication: sourceApplication,
            annotation: annotation)
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        CarePlanStoreManager.sharedCarePlanStoreManager.startPainAssessmentIfNeeded()
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        if #available(iOS 13.0, *) {
            scheduleDataUploadTask()
        }
    }
    
    @available (iOS 13.0, *)
    private func scheduleDataUploadTask() {
        let request = BGProcessingTaskRequest(identifier: "com.utatbicare.upload_data")
        
        request.earliestBeginDate = Date()?.adding(.hour, value: 24)
        
        do {
            try BGTaskScheduler.shared.submit(request)
        } catch {
            print("Couldn't submit background task request: \(error)")
        }
    }
    
    @available (iOS 13.0, *)
    private func handleUploadDataTask(_ task: BGProcessingTask) {
        scheduleDataUploadTask()
        
        guard !UserDefaults.standard.authToken().isEmpty else {
            task.setTaskCompleted(success: false)
            return }
        
        let queue = OperationQueue()
        queue.maxConcurrentOperationCount = 2
        
        task.expirationHandler = {
            queue.cancelAllOperations()
        }
        
        queue.addOperation {
            HealthKitManager.shared.sendHealthDataQueries(ofType: .vo2Max) { (success) in
                if success {
                    PersistentContainer.shared.backgroundDataUpload.setLatestUploadVO2JustNow()
                }
            }
        }
        
        queue.addOperation {
            HealthKitManager.shared.sendHealthDataQueries(ofType: .heartRateVariabilitySDNN) { (success) in
                if success {
                    PersistentContainer.shared.backgroundDataUpload.setLatestUploadHRVJustNow()
                }
            }
        }
    }

    private func requestAccessToHealthKit() {
        let healthStore = HKHealthStore()
        
        let allTypes = Set([HKObjectType.workoutType(),
                            HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.stepCount)!,
                            HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.distanceWalkingRunning)!,
                            HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.heartRate)!,
                            HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.activeEnergyBurned)!,
                            HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.vo2Max)!,
                            HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.heartRateVariabilitySDNN)!])
        
        healthStore.requestAuthorization(toShare: allTypes, read: allTypes) { (success, error) in
            if !success {
                print(error as Any)
                return
            }
            
            DispatchQueue.main.async {
                guard User.isLoggedIn else { return }
                CarePlanStoreManager.sharedCarePlanStoreManager.updateInsights()
                CarePlanStoreManager.sharedCarePlanStoreManager.loadActivitiesIntoStore(showLoader: false)
            }
        }
    }
    
    func isHealthKitFullyAuthorized() -> Bool {
        var authStatuses = [HKAuthorizationStatus]()
        authStatuses.append(HKHealthStore().authorizationStatus(for: HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.stepCount)!))
        authStatuses.append(HKHealthStore().authorizationStatus(for: HKObjectType.workoutType()))
        authStatuses.append(HKHealthStore().authorizationStatus(for: HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.distanceWalkingRunning)!))
        authStatuses.append(HKHealthStore().authorizationStatus(for: HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.heartRate)!))
        authStatuses.append(HKHealthStore().authorizationStatus(for: HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.activeEnergyBurned)!))
        authStatuses.append(HKHealthStore().authorizationStatus(for: HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.vo2Max)!))
        authStatuses.append(HKHealthStore().authorizationStatus(for: HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.heartRateVariabilitySDNN)!))
        
        for status in authStatuses {
            if status != .sharingAuthorized {
                return false
            }
        }
        
        return true
    }

}

