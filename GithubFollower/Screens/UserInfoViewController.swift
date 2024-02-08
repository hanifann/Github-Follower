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
        
        NetworkManager.shared.getUserInfo(for: username) { [weak self] result in
            switch result {
            case .success(let user):
                print(user)
            case .failure(let failure):
                self?.presentGFAlertOnMainThread(
                    title: "Something went wrong",
                    message: failure.rawValue,
                    buttonTitle: "Ok"
                )
            }
        }
    }
    
    @objc func dismissViewController() {
        dismiss(animated: true)
    }

}
