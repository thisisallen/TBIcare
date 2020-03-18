//
//  UIScrollView.swift
//  QosoorApp
//
//  Created by Ammar AlTahhan on 05/08/2019.
//  Copyright © 2019 Ammar AlTahhan. All rights reserved.
//

import UIKit

extension UIScrollView {
    func scrollViewToBottom(animated: Bool = true) {
        let bottomOffset = CGPoint(x: 0, y: contentSize.height - bounds.size.height)
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 0, options: .curveEaseOut, animations: {
            self.setContentOffset(bottomOffset, animated: animated)
        })
        
    }
}
