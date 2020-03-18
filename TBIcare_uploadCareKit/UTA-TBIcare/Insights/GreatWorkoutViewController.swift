//
//  GreatWorkoutViewController.swift
//  UTA-TBIcare
//
//  Created by Ammar AlTahhan on 11/02/2020.
//  Copyright © 2020 Ammar AlTahhan. All rights reserved.
//

import UIKit


class GreatWorkoutViewController: UIViewController {
    
    @IBOutlet weak var contentStackView: UIStackView!
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var backgroundView: RadialGradientView!
    
    var didDismiss: (()->Void)?
    
    private var titles: [String] = [
        "Good Job!",
        "Nice Workout!",
        "Great Work!"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = titles.randomElement()
        backgroundView.colors = [UIColor.white, UIColor.white.withAlphaComponent(0)]
        
        setupAnimation()
        
        view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(didTapView(_:))))
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        startAnimation(isHidden: false) { [weak self] in
            self?.startInPlaceAnimation()
        }
        UserDefaults.standard.setAllWorkoutTargetsReached(nil)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        didDismiss?()
    }
    
    @objc private func didTapView(_ gesture: UITapGestureRecognizer) {
        contentStackView.layer.removeAllAnimations()
        startAnimation(isHidden: true) {
            self.dismiss(animated: false)
        }
    }
    
    private func setupAnimation() {
        contentStackView.transform = CGAffineTransform(scaleX: 0.00001, y: 0.00001)
        backgroundView.alpha = 0
    }
    
    private func startAnimation(isHidden: Bool, completion: (()->Void)? = nil) {
        let duration: TimeInterval = isHidden ? 0.5 : 1.8
        let options: UIView.AnimationOptions = isHidden ? .curveEaseIn : .curveEaseInOut
        let damping: CGFloat = isHidden ? 0.95 : 0.7
        UIView.animate(withDuration: duration, delay: 0, usingSpringWithDamping: damping, initialSpringVelocity: 0, options: options, animations: {
            self.contentStackView.transform = isHidden ? CGAffineTransform(scaleX: 0.00001, y: 0.00001) : .identity
            self.backgroundView.alpha = isHidden ? 0 : 1
        }, completion: { _ in
            completion?()
        })
    }
    
    private func startInPlaceAnimation() {
        let shakeAnimationOne = CABasicAnimation(keyPath: "transform.scale")
        shakeAnimationOne.duration = 4
        shakeAnimationOne.repeatCount = Float.greatestFiniteMagnitude
        shakeAnimationOne.autoreverses = true
        shakeAnimationOne.fromValue = 1
        shakeAnimationOne.toValue = 0.9
        
        contentStackView.layer.add(shakeAnimationOne, forKey: "transform.scale")
    }
    
}
