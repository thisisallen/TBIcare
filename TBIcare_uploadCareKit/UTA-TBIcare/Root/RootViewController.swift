//
//  RootViewController.swift
//  UTA-TBIcare
//
//  Created by Ammar AlTahhan on 02/09/2019.
//  Copyright © 2019 Ammar AlTahhan. All rights reserved.
//

import UIKit
import CareKit

func getTopMostViewController() -> UIViewController? {
    var topController = UIApplication.shared.windows[0].rootViewController
    while topController?.presentedViewController != nil {
        topController = topController?.presentedViewController
    }
    
    return topController
}

class RootViewController: UITabBarController {
    
    static let shared = RootViewController()
    
    fileprivate let sampleData: SampleData
    
    fileprivate let storeManager = CarePlanStoreManager.sharedCarePlanStoreManager
    
    fileprivate var careContentsViewController: OCKCareContentsViewController!
    
    fileprivate var insightsViewController: OCKInsightsViewController!
    
    fileprivate var attemptsViewController: AttemptsTableViewController!
    
    fileprivate var connectViewController: OCKConnectViewController!
    
    fileprivate var watchManager: WatchConnectivityManager {
        return (UIApplication.shared.delegate as! AppDelegate).watchManager
    }
    
    init() {
        sampleData = SampleData(carePlanStore: storeManager.store)
        
        super.init(nibName: nil, bundle: nil)
        
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        sampleData = SampleData(carePlanStore: storeManager.store)
        
        super.init(coder: aDecoder)
        
        setup()
    }
    
    fileprivate func setup() {
        careContentsViewController = createCareContentsViewController()
        //        insightsViewController = createInsightsViewController()
        attemptsViewController = AttemptsTableViewController()
        connectViewController = createConnectViewController()
        
        self.viewControllers = [
            UINavigationController(rootViewController: careContentsViewController),
//            UINavigationController(rootViewController: insightsViewController),
            UINavigationController(rootViewController: attemptsViewController),
            UINavigationController(rootViewController: connectViewController)
        ]
        
        careContentsViewController.tabBarItem.image = UIImage(named: "Cardio")!
        careContentsViewController.glyphTintColor = UIColor.orange
        connectViewController.tabBarItem.image = UIImage(named: "Stethoscope")!
        attemptsViewController.tabBarItem.image = UIImage(named: "ActiveLife")!
        attemptsViewController.tabBarItem.title = "Attempts"
        attemptsViewController.title = "Attempts"
        
        let images = [UIImage(named: "Cardio")!, UIImage(named: "ActiveLife")!, UIImage(named: "Stethoscope")!]
        for (i, item) in (tabBar.items ?? []).enumerated() {
            item.image = images[i]
        }
        
        tabBar.tintColor = UIColor.orange
        
        storeManager.delegate = self
        
        modalPresentationStyle = .fullScreen
        
        loadStore(showLoader: false)
        
        if #available(iOS 13, *) {
            let app = UITabBarAppearance()
            app.selectionIndicatorTintColor = .orange
            tabBar.standardAppearance = app
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now()+5) {
            HealthKitManager.shared.sendVo2HRVQueriesIfPossible()
        }
    }
    
    var freshLaunch = true
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if freshLaunch {
            freshLaunch = false
            selectedIndex = 0
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        if UserDefaults.standard.isAllWorkoutTargetsReached() {
            let vc: GreatWorkoutViewController = GreatWorkoutViewController.instantiateFromStorybaord(R.storyboard.main())
            vc.didDismiss = { [weak self] in
                DispatchQueue.main.asyncAfter(deadline: .now()+0.5) {
                    self?.checkAssessments()
                }
            }
            present(vc, animated: false, completion: nil)
        } else {
            checkAssessments()
        }
    }
    
    func checkAssessments() {
        if UserDefaults.standard.checkPainAssessment() {
            let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SurveyVC") as! SurveyViewController
            present(vc, animated: true, completion: nil)
        } else if UserDefaults.standard.checkWorkoutAssessment() {
            let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "WorkoutSurveyVC") as! WorkoutSurveyViewController
            present(vc, animated: true, completion: nil)
        }
    }
    
    func loadStore(showLoader: Bool = true) {
        CarePlanStoreManager.sharedCarePlanStoreManager.updateInsights()
        CarePlanStoreManager.sharedCarePlanStoreManager.loadActivitiesIntoStore(showLoader: showLoader)
    }
    
    static func alert(title: String, message: String) {
        getTopMostViewController()?.showAlert(title: title, message: message)
    }
    
    func hideTodayButton() {
        careContentsViewController.navigationItem.rightBarButtonItem?.isEnabled = false
        careContentsViewController.navigationItem.rightBarButtonItem?.tintColor = .clear
    }
    
    func showTodayButton() {
        careContentsViewController.navigationItem.rightBarButtonItem?.isEnabled = true
        careContentsViewController.navigationItem.rightBarButtonItem?.tintColor = nil
    }
    
    // MARK: Convenience
    
    fileprivate func createCareContentsViewController() -> OCKCareContentsViewController {
        let viewController = OCKCareContentsViewController(carePlanStore: storeManager.store)
        viewController.title = NSLocalizedString("Care Contents", comment: "")
        viewController.tabBarItem = UITabBarItem(title: viewController.title, image: UIImage(named:"carecard"), selectedImage: UIImage(named: "carecard-filled"))
        viewController.delegate = self;
        viewController.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Logout", style: .plain, target: self, action: #selector(logoutTapped))
        return viewController
        
    }
    
    fileprivate func createAttemptsViewController() -> AttemptsTableViewController {
        let viewController = AttemptsTableViewController()
        viewController.title = "Attempts"
        viewController.tabBarItem = UITabBarItem(title: viewController.title, image: UIImage(named:"carecard"), selectedImage: UIImage(named: "carecard-filled"))
        return viewController
    }
    
    @objc fileprivate func logoutTapped() {
        showPromptingAlert(title: "Logout", message: "Are you sure you want to logout?", acceptingTitle: "Logout", destructive: true) { [weak self] (logout) in
            if logout {
                User.logout()
                CarePlanStoreManager.sharedCarePlanStoreManager.removeAllActivites()
                self?.dismiss(animated: true, completion: nil)
            }
        }
    }
    
    fileprivate func createInsightsViewController() -> OCKInsightsViewController {
        // Create an `OCKInsightsViewController` with sample data.
//        let activityType1: ActivitySubType = .backPain
//        let activityType2: ActivitySubType = .bloodGlucose
//        let activityType3: ActivitySubType = .weight
//        let widget1 = OCKPatientWidget.defaultWidget(withActivityIdentifier: activityType1.rawValue, tintColor: OCKColor.red)
//        let widget2 = OCKPatientWidget.defaultWidget(withActivityIdentifier: activityType2.rawValue, tintColor: OCKColor.red)
//        let widget3 = OCKPatientWidget.defaultWidget(withActivityIdentifier: activityType3.rawValue, tintColor: OCKColor.red)
        
        let viewController = OCKInsightsViewController(insightItems: storeManager.insights, patientWidgets: [], thresholds: [], store:storeManager.store)
        
        // Setup the controller's title and tab bar item
        viewController.title = NSLocalizedString("Insights", comment: "")
        viewController.tabBarItem = UITabBarItem(title: viewController.title, image: UIImage(named:"insights"), selectedImage: UIImage(named: "insights-filled"))
        
        return viewController    }
    
    fileprivate func createConnectViewController() -> OCKConnectViewController {
        let viewController = OCKConnectViewController.init(contacts: [], patient: nil)
//        viewController.delegate = self
//        viewController.dataSource = self
        // Setup the controller's title and tab bar item
        viewController.title = NSLocalizedString("Connect", comment: "")
        viewController.tabBarItem = UITabBarItem(title: viewController.title, image: UIImage(named:"connect"), selectedImage: UIImage(named: "connect-filled"))
        
        NetworkService.connectCard { (patient, err) in
            guard err == nil else { return }
            let ockPatient = patient?.ockPatient
            viewController.patient = ockPatient
            viewController.contacts = ockPatient?.careTeamContacts
        }
        
        return viewController
    }
}

extension RootViewController: OCKCareContentsViewControllerDelegate {
    
    func careContentsViewController(_ viewController: OCKCareContentsViewController, didSelectButtonWithInterventionEvent interventionEvent: OCKCarePlanEvent) {
//        if interventionEvent.state == .initial || interventionEvent.state == .notCompleted {
//            showAlert(title: "Not Allowed", message: "Please use the watch app to complete your daily activites")
//            if let event = viewController.lastSelectedEvent {
//                storeManager.store.update(event, with: nil, state: .notCompleted) { (success, event, err) in
//                    print(err)
//                }
//            }
//        }
    }
    
    func careContentsViewController(_ viewController: OCKCareContentsViewController, shouldHandleEventCompletionForInterventionActivity interventionActivity: OCKCarePlanActivity) -> Bool {
        showAlert(title: "Not Allowed", message: "Please use the watch app to complete your daily activites")
        return false
    }
    
    func careContentsViewController(_ viewController: OCKCareContentsViewController, didSelectRowWithAssessmentEvent assessmentEvent: OCKCarePlanEvent) {
        // Lookup the assessment the row represents.
//        guard let activityType = ActivityType(rawValue: assessmentEvent.activity.identifier) else { return }
//        guard let sampleAssessment = sampleData.activityWithType(activityType) as? Assessment else { return }
//
//        /*
//         Check if we should show a task for the selected assessment event
//         based on its state.
//         */
//        guard assessmentEvent.state == .initial ||
//            assessmentEvent.state == .notCompleted ||
//            (assessmentEvent.state == .completed && assessmentEvent.activity.resultResettable) else { return }
//
//        // Show an `ORKTaskViewController` for the assessment's task.
//        let taskViewController = ORKTaskViewController(task: sampleAssessment.task(), taskRun: nil)
//        taskViewController.delegate = self
//
//        present(taskViewController, animated: true, completion: nil)
    }
}

// MARK: OCKConnectViewControllerDataSource

//extension RootViewController: OCKConnectViewControllerDataSource {
//
//    func connectViewControllerNumber(ofConnectMessageItems viewController: OCKConnectViewController, careTeamContact contact: OCKContact) -> Int {
//        return 0
//    }
//
//    func connectViewControllerCareTeamConnections(_ viewController: OCKConnectViewController) -> [OCKContact] {
//        return []
//    }
//
//    func connectViewController(_ viewController: OCKConnectViewController, connectMessageItemAt index: Int, careTeamContact contact: OCKContact) -> OCKConnectMessageItem {
//        return sampleData.connectMessageItems[index]
//    }
//}

// MARK: OCKConnectViewControllerDelegate

//extension RootViewController: OCKConnectViewControllerDelegate {
//
//    /// Called when the user taps a contact in the `OCKConnectViewController`.
//    func connectViewController(_ connectViewController: OCKConnectViewController, didSelectShareButtonFor contact: OCKContact, presentationSourceView sourceView: UIView?) {
//        let document = sampleData.generateSampleDocument()
//        document.createPDFData {(data, error) in
//            let activityViewController = UIActivityViewController(activityItems: [data], applicationActivities: nil)
//            DispatchQueue.main.async {
//                self.present(activityViewController, animated: true, completion: nil)
//            }
//        }
//    }
//
//    func connectViewController(_ viewController: OCKConnectViewController, didSendConnectMessage message: String, careTeamContact contact: OCKContact) {
//        let dateString = DateFormatter.localizedString(from: Date(), dateStyle: .short, timeStyle: .short)
//        let connectMessage = OCKConnectMessageItem(messageType: .sent, name: sampleData.patient.name, message: message, dateString: dateString)
//        sampleData.connectMessageItems.append(connectMessage)
//    }
//}

// MARK: CarePlanStoreManagerDelegate

extension RootViewController: CarePlanStoreManagerDelegate {
    
    /// Called when the `CarePlanStoreManager`'s insights are updated.
    func carePlanStoreManager(_ manager: CarePlanStoreManager, didUpdateInsights insights: [OCKInsightItem]) {
        // Update the insights view controller with the new insights.
//        insightsViewController.items = insights
    }
}
