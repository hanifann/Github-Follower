//
//  UserInfoViewController.swift
//  GithubFollower
//
//  Created by hanifan nurul haq on 08/02/24.
//

import UIKit

class UserInfoViewController: UIViewController {
    
    var username: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        let doneButton = UIBarButtonItem(
            barButtonSystemItem: .done,
            target: self,
            action: #selector(dismissViewController)
        )
        navigationItem.rightBarButtonItem = doneButton
        navigationItem.title = username
    }
    
    @objc func dismissViewController() {
        dismiss(animated: true)
    }

}
