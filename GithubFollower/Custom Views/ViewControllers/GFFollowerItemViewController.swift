//
//  GFFollowerItemViewController.swift
//  GithubFollower
//
//  Created by hanifan nurul haq on 11/02/24.
//

import Foundation

class GFFollowerItemViewController: GFItemInfoViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        configureItems()
    }
    
    private func configureItems() {
        itemInfoViewOne.set(itemInfoType: .followers, withCount: user.followers)
        itemInfoViewTwo.set(itemInfoType: .following, withCount: user.following)
        actionbutton.set(backgroundColor: .systemGreen, title: "Get Followers")
    }

}
