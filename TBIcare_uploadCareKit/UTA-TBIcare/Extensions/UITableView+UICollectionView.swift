//
//  UITableView.swift
//  
//
//  Created by Ammar AlTahhan on 21/01/2019.
//  Copyright © 2019 Ammar AlTahhan. All rights reserved.
//

import UIKit

extension UITableView {
    
    var EmptyStackTag: Int { return  214512 }
    
    func showEmpty(image: UIImage? = nil, imageTintColor: UIColor? = nil, message: String, color: UIColor = .lightGray, font: UIFont = UIFont.systemFont(ofSize: 13), stackOffset: CGSize = CGSize(width: 0, height: 0)) {
        guard !subviews.contains(where: {$0.tag==EmptyStackTag}) else { return }
        
        let imageView = UIImageView()
        let label = UILabel()
        
        imageView.image = image
        imageView.contentMode = .scaleAspectFit
        imageView.tintColor = imageTintColor
        
        label.text = message
        label.textAlignment = .center
        label.textColor = color
        label.font = font
        label.numberOfLines = 2
        
        let stackView = UIStackView(arrangedSubviews: [imageView, label])
        stackView.axis = .vertical
        stackView.spacing = 12
        stackView.tag = EmptyStackTag
        
        addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: centerXAnchor, constant: stackOffset.width),
            stackView.centerYAnchor.constraint(equalTo: centerYAnchor, constant: stackOffset.height),
            stackView.leadingAnchor.constraint(greaterThanOrEqualTo: leadingAnchor, constant: 12),
            stackView.trailingAnchor.constraint(greaterThanOrEqualTo: trailingAnchor, constant: -12)
            ])
        imageView.translatesAutoresizingMaskIntoConstraints = false
        label.translatesAutoresizingMaskIntoConstraints = false
        imageView.heightAnchor.constraint(lessThanOrEqualToConstant: 120).isActive = true
    }
    
    func removeEmpty() {
        viewWithTag(EmptyStackTag)?.removeFromSuperview()
    }
    
    var isLastRowVisible: Bool {
        guard let lastRow = indexPathForLastRow else { return true }
        return indexPathsForVisibleRows?.contains(lastRow) ?? true
    }
    
    var isFirstRowVisible: Bool {
        guard numberOfRows() > 0 else { return true }
        return indexPathsForVisibleRows?.contains(IndexPath(row: 0, section: 0)) ?? true
    }
    
}

extension UICollectionView {
    
    var EmptyStackTag: Int { return  214512 }
    
    func showEmpty(image: UIImage? = nil, message: String, color: UIColor = .lightGray, font: UIFont = UIFont.systemFont(ofSize: 13)) {
        guard !subviews.contains(where: {$0.tag==EmptyStackTag}) else { return }
        
        let imageView = UIImageView()
        let label = UILabel()
        
        imageView.image = image
        imageView.contentMode = .scaleAspectFit
        
        label.text = message
        label.textAlignment = .center
        label.textColor = color
        label.font = font
        label.numberOfLines = 2
        
        let stackView = UIStackView(arrangedSubviews: [imageView, label])
        stackView.axis = .vertical
        stackView.spacing = 12
        stackView.tag = EmptyStackTag
        
        addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: centerYAnchor),
            stackView.leadingAnchor.constraint(greaterThanOrEqualTo: leadingAnchor, constant: 12),
            stackView.trailingAnchor.constraint(greaterThanOrEqualTo: trailingAnchor, constant: 12)
            ])
        imageView.translatesAutoresizingMaskIntoConstraints = false
        label.translatesAutoresizingMaskIntoConstraints = false
        imageView.heightAnchor.constraint(lessThanOrEqualToConstant: 120).isActive = true
    }
    
    func removeEmpty() {
        viewWithTag(EmptyStackTag)?.removeFromSuperview()
//        for subview in subviews {
//            if subview.tag == EmptyStackTag {
//                subview.removeFromSuperview()
//            }
//        }
    }
}

extension UITableView {
    func register<T: UITableViewCell>(_: T.Type) where T: ReusableView {
        register(T.self, forCellReuseIdentifier: T.defaultReuseIdentifier)
    }
    func register<T: UITableViewCell>(_: T.Type) where T: ReusableView, T: NibLoadableView {
        let bundle = Bundle(for: T.self)
        let nib = UINib(nibName: T.nibName, bundle: bundle)
        register(nib, forCellReuseIdentifier: T.defaultReuseIdentifier)
    }
    func dequeueReusableCell<T: UITableViewCell>() -> T where T: ReusableView, T: NibLoadableView {
        register(T.self)
        return dequeueReusableCell(withIdentifier: T.defaultReuseIdentifier) as! T
    }
    func dequeueReusableCell<T: UITableViewCell>() -> T where T: ReusableView {
        register(T.self)
        return dequeueReusableCell(withIdentifier: T.defaultReuseIdentifier) as! T
    }
}


extension UICollectionView {
    
    func register<T: UICollectionViewCell>(_: T.Type) where T: ReusableView {
        register(T.self, forCellWithReuseIdentifier: T.defaultReuseIdentifier)
    }
    
    func register<T: UICollectionViewCell>(_: T.Type, reuseIdentifier: String) where T: NibLoadableView {
        let bundle = Bundle(for: T.self)
        let nib = UINib(nibName: T.nibName, bundle: bundle)
        
        register(nib, forCellWithReuseIdentifier: reuseIdentifier)
    }
    
    func register<T: UICollectionViewCell>(_: T.Type) where T: ReusableView, T: NibLoadableView {
        let bundle = Bundle(for: T.self)
        let nib = UINib(nibName: T.nibName, bundle: bundle)
        
        register(nib, forCellWithReuseIdentifier: T.defaultReuseIdentifier)
    }
    
    func dequeueReusableCell<T: UICollectionViewCell>(forIndexPath indexPath: IndexPath) -> T where T: ReusableView {
        guard let cell = dequeueReusableCell(withReuseIdentifier: T.defaultReuseIdentifier, for: indexPath) as? T else {
            fatalError("Could not dequeue cell with identifier: \(T.defaultReuseIdentifier)")
        }
        
        return cell
    }
}

extension UITableViewCell {
    /// Search up the view hierarchy of the table view cell to find the containing table view
    var tableView: UITableView? {
        get {
            var table: UIView? = superview
            while !(table is UITableView) && table != nil {
                table = table?.superview
            }
            
            return table as? UITableView
        }
    }
}
