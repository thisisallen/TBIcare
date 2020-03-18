//
//  ViewController.swift
//  UTA-TBIcare
//
//  Created by Ammar AlTahhan on 31/08/2019.
//  Copyright © 2019 Ammar AlTahhan. All rights reserved.
//

import UIKit
import AWSAppSync
import HealthKit
import HealthKitUI

let  healthKitStore:HKHealthStore = HKHealthStore()

class LoginViewController: UIViewController {
    
    var appSyncClient: AWSAppSyncClient?
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        modalPresentationStyle = .fullScreen
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        modalPresentationStyle = .fullScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appSyncClient = appDelegate.appSyncClient
        
        authrizeHealthKitApp()
        //getAll()
        runMutation()
        //readsteps()
        //update()
        //getOne()
        
        modalPresentationStyle = .fullScreen
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        if User.isLoggedIn {
            loggedIn()
        }
    }

    @IBAction func signInTapped(_ sender: UIButton) {
        showLoadingIndicator()
        NetworkService.logIn(username: usernameTextField.text!, password: passwordTextField.text!) { (success, error) in
            guard success else {
                self.stopLoadingIndicator()
                self.showAlert(title: "Error", message: "Couldn't sign in. Please check your credentials.")
                return
            }
            
            self.loggedIn()
        }
    }
    
    func runMutation(){
        //Patient Input
        let vo2MaxInput = Vo2MaxInput(createdAt: "2020-02-01 07:37:05", recordedAt: "2020-01-28 14:10:31", value:38.9444)
        let heartRateVariabilityInput = HeartRateVariabilityInput(createdAt: "2020-02-01 07:37:05", recordedAt: "2020-01-28 14:10:31", value: 38.9444)
        let itemsInput = ItemsInput(email: "ahmad.turki@mavs.uta.edu", phone: "817-501-7460", sms: "817-501-7460")
        let careTeamContactInput = CareTeamContactInput(name: "Ahmad Turki", relation: "Ahmad Turki", type: "care team", items: itemsInput)
        let patientInput = PatientInput(categories: "dev", color: "#000000", createdAt: "todat", detailedInfo: "first_patient", email: "tim75024@yahoo.com", emailVerified: true, imageUrl: "https://i.pinimg.com/564x/59/21/0c/59210c35ea4cea0af41b9c0002e2677c.jpg", monogram: "p1", name: "allen", password: "allen444", userName: "tim75024", vo2Max: vo2MaxInput, heartRateVariability: heartRateVariabilityInput, careTeamContact: careTeamContactInput)
        //Schedule Input
        let scheduleInput = ScheduleInput(createdAt: "today", endDate: "endDate", skip: 0, type: "type", frequency: [0,0,1])
//        let attemptInput = AttemptInput(activeEnergyBurned: 100, createdAt: "createdAt", distance: 1000, heartRateVariability: 70, painAssessment: 90, step: 5000, updatedAt: "updatedAt", vo2Max: ["vo2Max"], heartRates: [100,200,300])
        
        //Event Input
        let heartRateInput = HeartRateInput(createdAt: "createdAt", heartRateValue: [86], recordedAt: "recordedAt")
        let attemptInput = AttemptInput(activeEnergyBurned: 100, borgScale: "very light", createdAt: "createdAt", distance: 1000, heartRateCount: 626, heartRateReport: "a CSV file", steps: 5000, time: 125, workoutAssessment: "too easy", heartRate: heartRateInput)
        let eventInput = EventInput(createdAt: "createdAt", numberOfDaysSinceStart: 10, occurrenceIndexofDay: 20, state: 10, attempt: [attemptInput])
        
        
        //Workout Type Input
        let workoutTypeInput = WorkoutTypeInput(category: "exercise and fitness", id: "52", name: "walking")
        
        //Create
        let mutationInput = CreateTBIcareInput(color: "blue", createdAt: "createdAt", groupId: "Today's Prescription", imageUrl: "https://i.pinimg.com/564x/59/21/0c/59210c35ea4cea0af41b9c0002e2677c.jpg", instructions: "walk for 20 min to reach 100 bpm", locationType: "indoor", optional: true, resultResetable: true, startDate: "startDate", subtype: "Physical Activity", summary: "summary", targetActiveBurnedEnergy: 250, targetDistance: 100, targetHeartRate: 90, targetSteps: 99, targetTime: 60, text: "please walk for 20 min", title: "Walking", type: "Intervention", updatedAt: "updatedAt", workoutType: workoutTypeInput, schedule: scheduleInput, patient: patientInput, event: eventInput)
        appSyncClient?.perform(mutation: CreateTbIcareMutation(input: mutationInput)) { (result, error) in
            //self.runQuery()
            print(mutationInput)
            if let error = error as? AWSAppSyncClientError {
                print("Error occurred: \(error.localizedDescription )")
            }
            if let resultError = result?.errors {
                print("Error saving the item on server: \(resultError)")
                return
            }
            print("Mutation complete.")
        }
    }
    
//    func update(){
//        let userInput = UserInput(createdAt: "today", email: "tim75024@yahoo.com", emailVerified: true, password: "allen444", updatedAt: "today", userName: "tim75024", session: nil)
//        let scheduleInput = ScheduleInput(createdAt: "today", endDate: "endDate", freqPerDay: 10, skip: 10, type: "type", updatedAt: "today", occurrencesFromSundayToSaturday: [10])
//        let attemptInput = AttemptInput(activeEnergyBurned: 100, createdAt: "createdAt", distance: 1000, heartRateVariability: 70, painAssessment: 90, step: 5000, updatedAt: "updatedAt", vo2Max: ["vo2Max"], heartRates: [100,200,300])
//        let eventInput = EventInput(createdAt: "today", maxHeartRate: 80, numberOfDaysSinceStart: 10, occurrenceIndexofDay: 20, state: 10, updatedAt: "today", attempt: attemptInput)
//        let mutationInput = UpdateTBIcareInput(id:"8a5a5425-2095-4518-a6ec-2e80d4342ae1",color: "hahahahahahha", createdAt:"createdAt", groupId: "groupId", imageUrl: "imageURL", instructions:"instructions", optional: true, resetable: true, startDate: "startDate", subtype: "subtype", summary: "summary", targetDistance: 100, targetHeartRate: 98, targetSteps: 200, targetTime: 60, title: "title", type: "type", updatedAt: "updatedAt",user:userInput, schedule: scheduleInput, event: eventInput)
//        appSyncClient?.perform(mutation: UpdateTbIcareMutation(input: mutationInput)) { (result, error) in
//            //self.runQuery()
//            print(mutationInput)
//            if let error = error as? AWSAppSyncClientError {
//                print("Error occurred: \(error.localizedDescription )")
//            }
//            if let resultError = result?.errors {
//                print("Error saving the item on server: \(resultError)")
//                return
//            }
//            print("Update complete.")
//        }
//    }
    
//    func getAll(){
//        appSyncClient?.fetch(query: ListTbIcaresQuery(), cachePolicy: .fetchIgnoringCacheData) {(result, error) in
//            if error != nil {
//                print(error?.localizedDescription ?? "")
//                return
//            }
//            print("Query complete.")
//            result?.data?.listTbIcares?.items!.forEach { print(($0?.id)! + " " + ($0?.title)! + " " + ($0?.startDate)! ) }
//        }
//    }
    
//    func getOne(){
//        appSyncClient?.fetch(query: GetTbIcareQuery(id: "8a5a5425-2095-4518-a6ec-2e80d4342ae1"), cachePolicy: .fetchIgnoringCacheData) {(result, error) in
//            if error != nil {
//                print(error?.localizedDescription ?? "")
//                return
//            }
//            print("Query complete.")
//            let myColor = result?.data?.getTbIcare?.patient?.userName
//            print(myColor!)
//
//        }
//    }
    
    func authrizeHealthKitApp(){
        
        let healthKitTypesToRead : Set<HKObjectType> = [
            HKObjectType.characteristicType(forIdentifier: HKCharacteristicTypeIdentifier.dateOfBirth)!,
            HKObjectType.characteristicType(forIdentifier: HKCharacteristicTypeIdentifier.bloodType)!,
            HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.heartRate)!,
            HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.distanceWalkingRunning)!,
            HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.stepCount)!,
            
            ]
        
        let healthKitTypesToWrite :Set<HKSampleType> = []
        
        if !HKHealthStore.isHealthDataAvailable(){
            print("Error occured")
            return
        }
        
        healthKitStore.requestAuthorization(toShare: healthKitTypesToWrite, read: healthKitTypesToRead) { (success, error) -> Void in
            print("Read Write authorization succeeded")
        }
        
    }
    
//    func readsteps(){
//
//        let sampleType = HKSampleType.quantityType(forIdentifier: HKQuantityTypeIdentifier.stepCount)!
//
//        
//
//        let query = HKSampleQuery(sampleType: sampleType, predicate: nil, limit: Int(HKObjectQueryNoLimit), sortDescriptors: nil) {
//            query, results, error in
//
//            if let samples = results as? [HKQuantitySample]{
//                var count = 0
//                var array = [HKQuantitySample]()
//                for sample in samples.reversed(){
//                    count = count + 1
//                    if count<10{
//                        array.append(sample)
//                    }else if count == 10{
//                        //print(sample.quantity)
//                        for steps in array.reversed(){
//                            let value = steps.quantity.doubleValue(for: HKUnit.count())
//                            let myStep  = Int(value)
//                            let userInput = UserInput(createdAt: "today", email: "tim75024@yahoo.com", emailVerified: true, password: "allen444", updatedAt: "today", userName: "tim75024", session: nil)
//                            let mutationInput = CreateTBIcareInput(color: "color", createdAt:"createdAt", groupId: "groupId", imageUrl: "imageURL", instructions:"instructions", optional: true, resetable: true, startDate: "startDate", subtype: "subtype", summary: "summary", targetDistance: 100, targetHeartRate: 98, targetSteps: myStep, targetTime: 60, title: "title", type: "type", updatedAt: "updatedAt",user:userInput)
//                            self.appSyncClient?.perform(mutation: CreateTbIcareMutation(input: mutationInput)) { (result, error) in
//                                //self.runQuery()
//                                print(mutationInput)
//                                if let error = error as? AWSAppSyncClientError {
//                                    print("Error occurred: \(error.localizedDescription )")
//                                }
//                                if let resultError = result?.errors {
//                                    print("Error saving the item on server: \(resultError)")
//                                    return
//                                }
//                                print("Mutation complete.")
//                            }
//                        }
//                        break
//                    }
//
//                }
//            }else{
//                print("Fail")
//            }
//        }
//
//        healthKitStore.execute(query)
//    }
    
    
    func loggedIn() {
        showLoadingIndicator(withStatus: "Loading Care Plan")
        CarePlanStoreManager.sharedCarePlanStoreManager.loadActivitiesIntoStore(showLoader: false) { _ in
            DispatchQueue.main.async {
                self.stopLoadingIndicator()
                guard !RootViewController.shared.isBeingPresented else { return }
                let vc = RootViewController.shared
                vc.modalPresentationStyle = .fullScreen
                self.present(vc, animated: true, completion: nil)
            }
        }
    }

}

