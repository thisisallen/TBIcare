//
//  ScoreInfoViewController.swift
//  UTA-TBIcare
//
//  Created by Ammar AlTahhan on 07/12/2019.
//  Copyright © 2019 Ammar AlTahhan. All rights reserved.
//

import UIKit

class ScoreInfoViewController: UIViewController {

    @IBOutlet weak var backDimmingView: UIView!
    @IBOutlet weak var infoView: UIView!
    
    let animationTransform = CGAffineTransform(translationX: 0, y: 40)
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        modalPresentationStyle = .overCurrentContext
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupAnimation()
    }
    
    func setupAnimation() {
        backDimmingView.alpha = 0
        infoView.alpha = 0
        infoView.transform = animationTransform
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        animateViews(inAnimation: true)
    }
    
    func animateViews(inAnimation: Bool, completion: (()->Void)? = nil) {
        UIView.animate(withDuration: 0.8, delay: 0.1, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseOut, animations: {
            self.backDimmingView.alpha = inAnimation ? 0.75 : 0
            self.infoView.alpha = inAnimation ? 1 : 0
            self.infoView.transform = inAnimation ? .identity : self.animationTransform
        }) { (_) in
            completion?()
        }
    }

    @IBAction func dismissController(_ sender: Any) {
        animateViews(inAnimation: false) {
            self.dismiss(animated: false, completion: nil)
        }
    }
    
}
