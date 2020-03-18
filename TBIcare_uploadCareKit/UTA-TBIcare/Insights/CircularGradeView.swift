//
//  CircularGradeView.swift
//  TeamPlusApp
//
//  Created by Ammar AlTahhan on 01/03/2019.
//  Copyright © 2019 Ammar AlTahhan. All rights reserved.
//

import UIKit

class CircularGradeView: UIView {
    
    @IBInspectable var textSize: CGFloat = 14 {
        didSet {
            setupCountingLabel()
        }
    }
    
    private(set) var grade: Float = 0
    
    private let trackLayer = CAShapeLayer()
    private let shapeLayer = CAShapeLayer()
    
    private let countingLabel = CountingLabel()
    
    private lazy var lineWidth: CGFloat = frame.height / 18
    private var circularPath: UIBezierPath!
    
    override var bounds: CGRect {
        didSet {
            setup()
        }
    }
    
    override func didMoveToSuperview() {
        super.didMoveToSuperview()
        
        setup()
    }
    
    public func setValue(_ value: Float, topScore: Float, animated: Bool) {
        grade = value/topScore
        
        animateCountingLabel(toValue: value)
        if animated {
            animateShapeLayer()
        } else {
            animateShapeLayer()
        }
    }
    
    private func setup() {
        circularPath = UIBezierPath(ovalIn: bounds)
        
        addTrackLayer()
        addShapeLayer()
        animateShapeLayer()
        
        addCountingLabel()
    }
    
    private func addTrackLayer() {
        trackLayer.removeFromSuperlayer()
        trackLayer.path = circularPath.cgPath
        trackLayer.strokeColor = UIColor.lightGray.withAlphaComponent(0.25).cgColor
        trackLayer.lineWidth = lineWidth
        trackLayer.fillColor = UIColor.clear.cgColor
        trackLayer.lineCap = .round
        layer.addSublayer(trackLayer)
    }
    
    private func addShapeLayer() {
        shapeLayer.removeFromSuperlayer()
        shapeLayer.path = circularPath.cgPath
        shapeLayer.strokeColor = UIColor.red.cgColor
        shapeLayer.lineWidth = lineWidth
        shapeLayer.fillColor = UIColor.clear.cgColor
        shapeLayer.lineCap = .round
        shapeLayer.strokeEnd = 0
//        shapeLayer.anchorPoint = CGPoint(x: 0.5, y: 0.5)
//        shapeLayer.transform = CATransform3DMakeRotation(-CGFloat.pi/2, 0, 0, 1)
        layer.addSublayer(shapeLayer)
    }
    
    @objc
    private func animateShapeLayer() {
        let strokeEndAnimation = CABasicAnimation(keyPath: "strokeEnd")
        
        strokeEndAnimation.toValue = grade
        strokeEndAnimation.duration = 1
        strokeEndAnimation.fillMode = .forwards
        strokeEndAnimation.isRemovedOnCompletion = false
        
        shapeLayer.add(strokeEndAnimation, forKey: "strokeAnimation")
        
        let strokeColorAnimation = CABasicAnimation(keyPath: "strokeColor")
        
        let color = UIColor(hue: CGFloat(grade/Float(4)), saturation: 0.95, brightness: 0.9, alpha: 1)
        strokeColorAnimation.toValue = color.cgColor
        strokeColorAnimation.duration = 1
        strokeColorAnimation.fillMode = .forwards
        strokeColorAnimation.isRemovedOnCompletion = false
        
        shapeLayer.add(strokeColorAnimation, forKey: "strokeColor")

    }
    
    private func addCountingLabel() {
        addSubview(countingLabel)
        countingLabel.translatesAutoresizingMaskIntoConstraints = false
        countingLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        countingLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        countingLabel.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.8).isActive = true
        countingLabel.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.8).isActive = true
        setupCountingLabel()
    }
    
    private func setupCountingLabel() {
        countingLabel.font = UIFont.systemFont(ofSize: textSize)
        countingLabel.textColor = UIColor.red
        countingLabel.text = "0.00"
        countingLabel.textAlignment = .center
    }
    
    private func animateCountingLabel(toValue value: Float) {
        countingLabel.setNumber(value, animated: true)
        
        let color = UIColor(hue: CGFloat(grade/Float(4)), saturation: 0.95, brightness: 0.9, alpha: 1)
        
        let changeColor = CATransition()
        changeColor.duration = 0.8
        
        CATransaction.begin()
        
        CATransaction.setCompletionBlock {
            self.countingLabel.layer.add(changeColor, forKey: nil)
            self.countingLabel.textColor = color
        }
        
        countingLabel.textColor = .red
        
        CATransaction.commit()
    }
    
}
