//
//  UITextField.swift
//  UTA-TBIcare
//
//  Created by Ammar AlTahhan on 31/08/2019.
//  Copyright © 2019 Ammar AlTahhan. All rights reserved.
//

import UIKit

class MainTextField: UITextField {
    
    @IBInspectable lazy var placeholderInset: CGSize = CGSize.zero
    @IBInspectable lazy var textInset: CGSize = CGSize.zero
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return CGRect(x: textInset.width, y: textInset.height, width: bounds.width - (2 * textInset.width), height: bounds.height - (2 * textInset.height))
    }

    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return CGRect(x: textInset.width, y: textInset.height, width: bounds.width - (2 * textInset.width), height: bounds.height - (2 * textInset.height))
    }
    
    override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return CGRect(x: placeholderInset.width, y: placeholderInset.height, width: bounds.width - (2 * placeholderInset.width), height: bounds.height - (2 * placeholderInset.height))
    }
    
}
