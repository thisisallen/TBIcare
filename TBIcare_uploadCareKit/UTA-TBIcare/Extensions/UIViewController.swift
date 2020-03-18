//
//  UIViewController.swift
//  QosoorApp
//
//  Created by Ammar AlTahhan on 29/05/2019.
//  Copyright © 2019 Ammar AlTahhan. All rights reserved.
//

import UIKit
import SVProgressHUD

extension UIViewController {
    func showLogoInNavBar() {
        guard let navBar = navigationController?.navigationBar else { return }
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: navBar.frame.size.width, height: navBar.frame.size.height-12))
        imageView.image = UIImage(named: "logoWhite")
        imageView.contentMode = .scaleAspectFit
        navigationItem.titleView = imageView
        navBar.largeTitleTextAttributes = [ NSAttributedString.Key.font : UIFont.systemFont(ofSize: 2) ]
    }
}

extension UIViewController {
    static func instantiateFromStorybaord<T>(_ storyBoard: UIStoryboard) -> T {
        return storyBoard.instantiateViewController(withIdentifier: String(describing: self)) as! T
    }
}

extension UIViewController {
    var loadingIndicator: LoadingViewController {
        if let li = children.first(where: {$0 is LoadingViewController}) {
            return li as! LoadingViewController
        }
        return LoadingViewController()
    }
    func showAlert(title: String, message: String, completion: (()->Void)? = nil) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: { (_) in
            completion?()
        }))
        present(alertController, animated: true, completion: nil)
    }
    func showPromptingAlert(title: String, message: String, acceptingTitle: String = "Yes", destructive: Bool = false, completion: ((_ accepted: Bool)->Void)? = nil) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: acceptingTitle, style: destructive ? .destructive : .default, handler: { (_) in
            completion?(true)
        }))
        alertController.addAction(UIAlertAction(title: "Back", style: .cancel, handler: { (_) in
            alertController.dismiss(animated: true, completion: {
                completion?(false)
            })
        }))
        present(alertController, animated: true, completion: nil)
    }
    func showLoadingIndicator() {
        SVProgressHUD.show()
    }
    func showLoadingIndicator(withStatus status: String) {
        SVProgressHUD.show(withStatus: status)
    }
    func stopLoadingIndicator() {
        SVProgressHUD.dismiss()
    }
}

extension UIViewController {
    func add(_ child: UIViewController) {
        addChild(child)
        view.addSubview(child.view)
        child.didMove(toParent: self)
    }
    
    func addToCenter(_ child: UIViewController) {
        addChild(child)
        view.addSubview(child.view)
        child.view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            child.view.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            child.view.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            child.view.widthAnchor.constraint(equalTo: view.widthAnchor),
            child.view.heightAnchor.constraint(equalTo: view.heightAnchor)
            ])
        child.didMove(toParent: self)
    }
    
    func add(_ child: UIViewController, toSpecificViewInHierarchy view: UIView, withInsets insets: UIEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)) {
        addChild(child)
        view.addSubview(child.view)
        
        child.view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            child.view.topAnchor.constraint(equalTo: view.topAnchor, constant: insets.top),
            child.view.leftAnchor.constraint(equalTo: view.leftAnchor, constant: insets.left),
            child.view.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -insets.right),
            child.view.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -insets.bottom)
            ])
        
        child.didMove(toParent: self)
    }
    
    func add(_ child: UIViewController, toSpecificViewInHierarchy view: UIView, withConstraints constraints: [NSLayoutConstraint]) {
        addChild(child)
        view.addSubview(child.view)
        
        child.view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate(constraints)
        
        child.didMove(toParent: self)
    }
    
    func remove() {
        guard parent != nil else {
            return
        }
        
        willMove(toParent: nil)
        view.removeFromSuperview()
        removeFromParent()
    }
}

extension UIView {
    var textFieldsInView: [UITextField] {
        return subviews
            .filter ({ !($0 is UITextField) })
            .reduce (( subviews.compactMap { $0 as? UITextField }), { summ, current in
                return summ + current.textFieldsInView
            })
    }
    var selectedTextField: UITextField? {
        return textFieldsInView.filter { $0.isFirstResponder }.first
    }
    class func fromNib<T: UIView>() -> T {
        return Bundle.main.loadNibNamed(String(describing: T.self), owner: nil, options: nil)![0] as! T
    }
}
