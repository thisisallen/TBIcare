//
//  WorkoutSurveyViewController.swift
//  UTA-TBIcare
//
//  Created by Ammar AlTahhan on 01/02/2020.
//  Copyright © 2020 Ammar AlTahhan. All rights reserved.
//

import UIKit

class WorkoutSurveyViewController: UIViewController {
    
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
    }
    
    @IBAction func tooHard(_ sender: Any) {
        submitWorkoutAssessmnet(number: 2)
    }
    
    @IBAction func justRight(_ sender: Any) {
        submitWorkoutAssessmnet(number: 1)
    }
    
    @IBAction func tooEasy(_ sender: Any) {
        submitWorkoutAssessmnet(number: 0)
    }
    
    private func submitWorkoutAssessmnet(number: Int) {
        if let id = UserDefaults.standard.pendingWorkoutAssessment() {
            NetworkService.recordWorkoutAssessment(number, forAttempWithId: id) { (success, err) in
                guard success else {
                    UserDefaults.standard.setPendingWorkoutAssessment(forAttempWithId: id)
                    return
                }
            }
        }
        
        UserDefaults.standard.setPendingWorkoutAssessment(forAttempWithId: nil)
        dismiss(animated: true, completion: nil)
    }

}
