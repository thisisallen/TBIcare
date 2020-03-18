//
//  OnBoardingViewController.swift
//  UTA-TBIcare
//
//  Created by Ammar AlTahhan on 06/09/2019.
//  Copyright © 2019 Ammar AlTahhan. All rights reserved.
//

import UIKit

class OnBoardingViewController: UIViewController {
    
    @IBOutlet weak var centerYConstraint: NSLayoutConstraint!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        centerYConstraint.constant = -135
        UIView.animate(withDuration: 0.7, delay: 0, usingSpringWithDamping: 0.85, initialSpringVelocity: 0, options: .curveEaseOut, animations: {
            self.view.layoutIfNeeded()
        }) { (_) in
            
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now()+0.65) {
            self.checkLoginState()
        }
    }
    
    func checkLoginState() {
        if User.isLoggedIn {
            startApp()
        } else {
            login()
        }
    }
    
    func login() {
        let vc: LoginViewController = LoginViewController.instantiateFromStorybaord(R.storyboard.main())
        vc.modalTransitionStyle = .crossDissolve
        present(vc, animated: true, completion: nil)
    }
    
    func startApp() {
        guard !RootViewController.shared.isBeingPresented else { return }
        let vc = RootViewController.shared
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true, completion: nil)
    }
    
}
