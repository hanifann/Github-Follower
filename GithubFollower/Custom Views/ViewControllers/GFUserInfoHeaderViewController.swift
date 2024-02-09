//
//  GFUserInfoHeaderViewController.swift
//  GithubFollower
//
//  Created by hanifan nurul haq on 08/02/24.
//

import UIKit

class GFUserInfoHeaderViewController: UIViewController {
    
    var avatarImage = GFAvatarImageView(frame: .zero)
    var usernameLabel = GFTitleLabel(textAlignment: .left, fontSize: 36)
    var nameLabel = GFSecondaryTitleLabel(fontSize: 18)
    var locationIconImageView = UIImageView()
    var locationLabel = GFSecondaryTitleLabel(fontSize: 18)
    var bioLabel = GFBodyLabel(textAlignment: .left)
    
    var user: User!
    
    init(user: User) {
        super.init(nibName: nil, bundle: nil)
        self.user = user
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addSubView()
        layoutUI()
        configureUI()
    }
    
    func configureUI() {
        avatarImage.downloadImage(from: user.avatarUrl)
        usernameLabel.text = user.login
        nameLabel.text = user.name ?? ""
        locationIconImageView.image = UIImage(systemName: SFSymbols.location)
        locationIconImageView.tintColor = .secondaryLabel
        locationLabel.text = user.location ?? "Location not available"
        bioLabel.text = user.bio ?? "Bio not available"
        bioLabel.numberOfLines = 3
    }
    
    func addSubView() {
        view.addSubview(avatarImage)
        view.addSubview(usernameLabel)
        view.addSubview(nameLabel)
        view.addSubview(locationIconImageView)
        view.addSubview(locationLabel)
        view.addSubview(bioLabel)
    }
    
    func layoutUI() {
        let imagePadding: CGFloat = 12
        let padding: CGFloat = 20
        locationIconImageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            avatarImage.topAnchor.constraint(equalTo: view.topAnchor, constant: padding),
            avatarImage.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            avatarImage.widthAnchor.constraint(equalToConstant: 100),
            avatarImage.heightAnchor.constraint(equalToConstant: 100),
            
            usernameLabel.topAnchor.constraint(equalTo: avatarImage.topAnchor),
            usernameLabel.leadingAnchor.constraint(equalTo: avatarImage.trailingAnchor, constant: imagePadding),
            usernameLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            usernameLabel.heightAnchor.constraint(equalToConstant: 38),
            
            nameLabel.centerYAnchor.constraint(equalTo: avatarImage.centerYAnchor, constant: 8),
            nameLabel.leadingAnchor.constraint(equalTo: avatarImage.trailingAnchor, constant: imagePadding),
            nameLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            nameLabel.heightAnchor.constraint(equalToConstant: 20),
            
            locationIconImageView.bottomAnchor.constraint(equalTo: avatarImage.bottomAnchor),
            locationIconImageView.leadingAnchor.constraint(equalTo: avatarImage.trailingAnchor, constant: imagePadding),
            locationIconImageView.widthAnchor.constraint(equalToConstant: 20),
            locationIconImageView.heightAnchor.constraint(equalToConstant: 20),
            
            locationLabel.centerYAnchor.constraint(equalTo: locationIconImageView.centerYAnchor),
            locationLabel.leadingAnchor.constraint(equalTo: locationIconImageView.trailingAnchor, constant: 8),
            locationLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            locationLabel.heightAnchor.constraint(equalToConstant: 20),
            
            bioLabel.topAnchor.constraint(equalTo: avatarImage.bottomAnchor, constant: padding),
            bioLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            bioLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            bioLabel.heightAnchor.constraint(equalToConstant: 60)
        ])
    }

}
