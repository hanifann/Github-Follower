//
//  FollowerViewController.swift
//  GithubFollower
//
//  Created by hanifan nurul haq on 02/01/24.
//

import UIKit

class FollowerViewController: UIViewController {
    
    var username: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        navigationController?.isNavigationBarHidden = false
        navigationController?.navigationBar.prefersLargeTitles = true
    }
}
