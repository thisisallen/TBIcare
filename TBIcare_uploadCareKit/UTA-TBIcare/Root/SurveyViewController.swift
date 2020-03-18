//
//  SurveyViewController.swift
//  UTA-TBIcare
//
//  Created by Ammar AlTahhan on 15/10/2019.
//  Copyright © 2019 Ammar AlTahhan. All rights reserved.
//

import UIKit

class SurveyViewController: UIViewController {
    
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

    }
    
    @IBAction func maxEffort(_ sender: Any) {
        submitPainAssessmnet(number: 5)
    }
    
    @IBAction func veryHard(_ sender: Any) {
        submitPainAssessmnet(number: 4)
    }
    
    @IBAction func vigorous(_ sender: Any) {
        submitPainAssessmnet(number: 3)
    }
    
    @IBAction func moderate(_ sender: Any) {
        submitPainAssessmnet(number: 2)
    }
    
    @IBAction func light(_ sender: Any) {
        submitPainAssessmnet(number: 1)
    }
    
    @IBAction func veryLight(_ sender: Any) {
        submitPainAssessmnet(number: 0)
    }
    
    private func submitPainAssessmnet(number: Int) {
        if let id = UserDefaults.standard.pendingPainAssessment() {
            NetworkService.recordPainAssessment(number, forAttempWithId: id) { (success, err) in
                guard success else {
                    UserDefaults.standard.setPendingPainAssessment(forAttempWithId: id)
                    return
                }
            }
        }
        
        UserDefaults.standard.setPendingPainAssessment(forAttempWithId: nil)
        dismiss(animated: true, completion: nil)
    }
    
}
