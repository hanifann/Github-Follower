//
//  GFItemInfoViewController.swift
//  GithubFollower
//
//  Created by hanifan nurul haq on 11/02/24.
//

import UIKit

class GFItemInfoViewController: UIViewController {
    
    let stackView = UIStackView()
    let itemInfoViewOne = GFItemInfoView()
    let itemInfoViewTwo = GFItemInfoView()
    let actionbutton = GFButton()
    
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

        configureBackgroundView()
        layoutUI()
        configureStackView()
    }
    
    private func configureBackgroundView() {
        view.backgroundColor = .secondarySystemBackground
        view.layer.cornerRadius = 18
    }
    
    private func configureStackView() {
        stackView.axis = .horizontal
        stackView.distribution = .equalSpacing
        
        stackView.addArrangedSubview(itemInfoViewOne)
        stackView.addArrangedSubview(itemInfoViewTwo)
    }
    
    private func layoutUI() {
        view.addSubview(stackView)
        view.addSubview(actionbutton)
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        let padding: CGFloat = 20
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.topAnchor, constant: padding),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding),
            stackView.heightAnchor.constraint(equalToConstant: 50),
            
            actionbutton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -padding),
            actionbutton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding),
            actionbutton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding),
            actionbutton.heightAnchor.constraint(equalToConstant: 44)
        ])
    }
    

}
