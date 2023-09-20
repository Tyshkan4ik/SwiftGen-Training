//
//  ViewController.swift
//  SwiftGen Training
//
//  Created by Виталий Троицкий on 19.09.2023.
//

import UIKit

class ViewController: UIViewController {

    lazy var imageView: UIImageView = {
       let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var label: UILabel = {
        let label = UILabel()
        label.text = L10n.welcom
        label.font = UIFont.systemFont(ofSize: 30)
        label.numberOfLines = 0
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = Asset.Colors.myColors.color
        setupElements()
        setupConstraints()
        imageView.image = Asset.Assets.surf.image
    }

    private func setupElements() {
        view.addSubview(imageView)
        view.addSubview(label)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            imageView.widthAnchor.constraint(equalToConstant: 300),
            imageView.heightAnchor.constraint(equalToConstant: 300),
            
            label.bottomAnchor.constraint(equalTo: imageView.topAnchor, constant: -50),
            label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            label.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
    }
}
