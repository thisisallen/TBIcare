//
//  AttemptTableViewCell.swift
//  UTA-TBIcare
//
//  Created by Ammar AlTahhan on 30/10/2019.
//  Copyright © 2019 Ammar AlTahhan. All rights reserved.
//

import UIKit

class AttemptTableViewCell: UITableViewCell, NibLoadableView, ReusableView {
    
    enum CompletionState {
        case completed, notCompleted
        
        var image: UIImage {
            switch self {
            case .completed:
                return UIImage(named: "greenTick")!
            case .notCompleted:
                return UIImage(named: "halfGreen")!
            }
        }
        
        var color: UIColor {
            switch self {
            case .completed:
                return UIColor(red: 0.2, green: 0.85, blue: 0.1, alpha: 1)
            case .notCompleted:
                return UIColor.orange
            }
        }
        
        var title: String {
            switch self {
            case .completed:
                return "Done"
            case .notCompleted:
                return "Incomplete"
            }
        }
    }
    
    @IBOutlet private weak var completionImageView: UIImageView!
    @IBOutlet private weak var completionLabel: UILabel!
    @IBOutlet private weak var activityNameLabel: UILabel!
    @IBOutlet private weak var dateLabel: UILabel!
    @IBOutlet private weak var activityTimeLabel: UILabel!
    @IBOutlet private weak var maxBPMValue: UILabel!
    @IBOutlet private weak var caloriesValue: UILabel!
    
    var attempt: AttemptModel? {
        didSet {
            guard attempt != nil else { return }
            updateCell()
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    private func updateCell() {
        setState(attempt!.completed ? .completed : .notCompleted)
        dateLabel.text = attempt?.createdAt?.dateTimeString(ofStyle: .short)
        dateLabel.isHidden = attempt?.createdAt == nil
        maxBPMValue.text = "\(Int(attempt!.maxHeartRate))"
        activityNameLabel.text = attempt?.activityName
        activityTimeLabel.text = attempt?.cellTimeText
        caloriesValue.text = "\(Int(attempt!.avgHeartRate))"
    }
    
    private func setState(_ state: CompletionState) {
        completionImageView.image = state.image
        completionLabel.text = state.title
        completionLabel.textColor = state.color
    }
    
}
