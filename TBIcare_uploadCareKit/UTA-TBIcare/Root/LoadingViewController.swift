//
//  LoadingIndicator.swift
//
//
//  Created by Ammar AlTahhan on 05/02/2019.
//  Copyright © 2019 Ammar AlTahhan. All rights reserved.
//

import UIKit

class LoadingViewController: UIViewController {
    private lazy var activityIndicator = UIActivityIndicatorView(style: .gray)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        activityIndicator.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(activityIndicator)
        view.isUserInteractionEnabled = false
        
        if !(navigationController?.navigationBar.isHidden ?? true) {
            NSLayoutConstraint.activate([
                activityIndicator.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.1),
                activityIndicator.heightAnchor.constraint(equalTo: activityIndicator.widthAnchor),
                activityIndicator.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                activityIndicator.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -(parent?.navigationController?.navigationBar.bounds.height ?? 0.0))

                ])
        } else {
            NSLayoutConstraint.activate([
                activityIndicator.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                activityIndicator.centerYAnchor.constraint(equalTo: view.centerYAnchor)
                ])
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Use a 0.5 second delay to not show an activity indicator
        // in case our data loads very quickly.
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) { [weak self] in
            self?.activityIndicator.startAnimating()
        }
    }
}
