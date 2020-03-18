//
//  Kingfisher.swift
//  QosoorApp
//
//  Created by Ammar AlTahhan on 03/06/2019.
//  Copyright © 2019 Ammar AlTahhan. All rights reserved.
//

import Foundation
import Kingfisher

extension UIImageView {
    func setImage(with resource: Resource?) {
        guard let resource = resource else { return }
        kf.indicatorType = .activity
        kf.setImage(with: resource, placeholder: nil, options: [.transition(.fade(0.25))])
    }
}
