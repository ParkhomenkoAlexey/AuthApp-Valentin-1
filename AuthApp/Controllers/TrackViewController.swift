//
//  TrackViewController.swift
//  AuthApp
//
//  Created by Алексей Пархоменко on 11.05.2020.
//  Copyright © 2020 Алексей Пархоменко. All rights reserved.
//

import UIKit

class TrackViewController: UIViewController {
    
    let redView = UIView()
    let label = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupElements()
        setupConstraints()
    }
}

// MARK: - Setup View
extension TrackViewController {
    
    func setupElements() {
        view.backgroundColor = .white
        redView.backgroundColor = .red
        
        label.text = "My pretty image"
        
    }
}

// MARK: - Setup Constrains
extension TrackViewController {
    func setupConstraints() {
        
        redView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        redView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        let topStackView = UIStackView(arrangedSubviews: [redView, label])
        topStackView.translatesAutoresizingMaskIntoConstraints = false
        topStackView.axis = .vertical
        topStackView.spacing = 16
       
        view.addSubview(topStackView)
        
        NSLayoutConstraint.activate([
            topStackView.widthAnchor.constraint(equalTo: label.widthAnchor),
            topStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 40),
            topStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
            
        ])
    }
}
