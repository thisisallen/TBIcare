//
//  AttemptsTableViewController.swift
//  UTA-TBIcare
//
//  Created by Ammar AlTahhan on 30/10/2019.
//  Copyright © 2019 Ammar AlTahhan. All rights reserved.
//

import UIKit
import SVProgressHUD

class AttemptsTableViewController: UIViewController {
    
    let tableView = UITableView(frame: CGRect.zero, style: .grouped)
    
    var data = [AttemptModel]()
    var score: Score?
    
    private var animateViews = true
    
    override func loadView() {
        view = UIView(frame: UIScreen.main.bounds)
        
        view.backgroundColor = .white
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
        reloadData()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    private func setupUI() {
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.tableFooterView = UIView()
        view.addSubview(tableView)
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
            ])
        
        tableView.register(AttemptTableViewCell.self)
        tableView.register(AttemptsTableViewHeaderCell.self)
        tableView.delegate = self
        tableView.dataSource = self
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .refresh, target: self, action: #selector(reloadData))
        
        title = "Attempts"
    }
    
    @objc func reloadData() {
        SVProgressHUD.show()
        animateViews = true
        NetworkService.currentUserAttempts { (attempts, score, err) in
            SVProgressHUD.dismiss()
            guard err == nil else {
                self.showAlert(title: "An error has occured", message: "Try again later")
                print(err!)
                return
            }
            
            self.data = attempts
            self.score = score
            self.tableView.reloadData()
            
            DispatchQueue.main.asyncAfter(deadline: .now()+1) {
                self.animateViews = false
            }
        }
    }
    
    func showScoreInfo() {
        let vc: ScoreInfoViewController = ScoreInfoViewController.instantiateFromStorybaord(R.storyboard.main())
        tabBarController?.modalPresentationStyle = .overCurrentContext
        tabBarController?.present(vc, animated: false, completion: nil)
    }
    
}


extension AttemptsTableViewController: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return section == 0 ? 1 : data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell: AttemptsTableViewHeaderCell = tableView.dequeueReusableCell()

            cell.setEntity(AttemptsTableViewHeaderCell.Entity(maxPossibleScore: score?.total ?? 0,
                                                              currentScore: score?.gained ?? 0,
                                                              badgesCollected: score?.badges ?? []) { [weak self] in
                                                                self?.showScoreInfo()
            }, animated: animateViews)

            return cell
        }
        
        let cell: AttemptTableViewCell = tableView.dequeueReusableCell()
        
        cell.attempt = data[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return section == 0 ? 0 : UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return section == 0 ? "" : "Attempts History"
    }
}
