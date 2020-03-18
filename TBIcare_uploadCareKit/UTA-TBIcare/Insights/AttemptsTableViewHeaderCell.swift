//
//  AttemptsTableViewHeaderCell.swift
//  UTA-TBIcare
//
//  Created by Ammar AlTahhan on 06/12/2019.
//  Copyright © 2019 Ammar AlTahhan. All rights reserved.
//

import UIKit
import MKRingProgressView

@IBDesignable class AttemptsTableViewHeaderCell: UITableViewCell, NibLoadableView, ReusableView {
    
    struct Entity {
        var maxPossibleScore: Double
        var currentScore: Double
        var badgesCollected: [Int]
        var infoTapped: (()->Void)
    }
    
    private var onTapped: (()->Void)?
    
    @IBOutlet private weak var ringProgressView: RingProgressView!
    @IBOutlet private weak var ringProgressLabel: CountingLabel!
    @IBOutlet private weak var currentScoreLabel: UILabel!
    @IBOutlet private weak var maxScoreLabel: UILabel!
    
    @IBOutlet private weak var firstBadgeLabel: UILabel!
    @IBOutlet private weak var secondBadgeLabel: UILabel!
    @IBOutlet private weak var thirdBadgeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        ringProgressView.startColor = UIColor.systemOrange
        ringProgressView.endColor = UIColor(hexString: "7DBE39")
        
        selectionStyle = .none
    }
    
    func setEntity(_ entity: Entity, animated: Bool) {
        setScores(current: entity.currentScore, total: entity.maxPossibleScore, animated: animated)
        setBadges(entity.badgesCollected)
        
        onTapped = entity.infoTapped
    }
    
    private func setScores(current: Double, total: Double, animated: Bool) {
        guard total > 0 else {
            self.ringProgressView.progress = 0
            self.ringProgressLabel.text = "0%"
            return
        }
        
        let progress = current / total
        
        if animated {
            self.ringProgressView.progress = 0
            self.ringProgressLabel.text = "0%"
            DispatchQueue.main.asyncAfter(deadline: .now()+0.5) {
                UIView.animate(withDuration: 1, delay: 0, options: .curveEaseOut, animations: {
                    self.ringProgressView.progress = progress
                }, completion: nil)
            }
            DispatchQueue.main.asyncAfter(deadline: .now()+0.5) {
                self.ringProgressLabel.setNumber(progress*100, suffix: "%", animated: true, duration: 1.5)
            }
        } else {
            ringProgressView.progress = progress
            ringProgressLabel.setNumber(progress*100, suffix: "%", animated: false)
        }
        
        currentScoreLabel.text = "\(Int(current))"
        maxScoreLabel.text = "\(Int(total))"
    }
    
    private func setBadges(_ counts: [Int]) {
        firstBadgeLabel.text = "\(counts[safe: 0] ?? 0)"
        secondBadgeLabel.text = "\(counts[safe: 1] ?? 0)"
        thirdBadgeLabel.text = "\(counts[safe: 2] ?? 0)"
    }
    
    @IBAction func infoTapped(_ sender: Any) {
        onTapped?()
    }
}
