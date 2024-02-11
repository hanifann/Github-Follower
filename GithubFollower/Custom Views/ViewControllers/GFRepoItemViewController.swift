//
//  GFRepoItemViewController.swift
//  GithubFollower
//
//  Created by hanifan nurul haq on 11/02/24.
//

import UIKit

class GFRepoItemViewController: GFItemInfoViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        configureItems()
    }
    
    private func configureItems() {
        itemInfoViewOne.set(itemInfoType: .repos, withCount: user.publicRepos)
        itemInfoViewTwo.set(itemInfoType: .gist, withCount: user.publicGists)
        actionbutton.set(backgroundColor: .systemPurple, title: "GitHub Profile")
    }

}
