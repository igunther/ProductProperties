//
//  HomeController.swift
//  UIKitClean
//
//  Created by Øystein Günther on 13/02/2024.
//

import UIKit

final class HomeController: UIViewController {

    // MARK: - Properties
    
    lazy var productPropertiesButton: UIButton = {
        let button = UIButton(type: .system)
        button.accessibilityIdentifier = "navigateButton"
        button.addTarget(self, action: #selector(productPropertiesButtonTapped), for: .touchUpInside)
        button.setTitle("Product Properties", for: .normal)
        self.view.addSubview(button)
        return button
    }()
    
    // MARK: - Selectors
    
    @objc private func productPropertiesButtonTapped() {
        let productPropertiesController = ProductPropertiesController()
        
        self.present(productPropertiesController, animated: true) {
            if #available(iOS 15.0, *) {
                
            }
        }
    }
    
    // MARK: - Lifecycle
    
    deinit {
        print("OS reclaiming memory for HomeController")
    }
    
    required init() {
        super.init(nibName: nil, bundle: nil)
        title = "HomeController"
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initSelf()
        initConstraints()
        productPropertiesButtonTapped()
    }
    
    // MARK: - Helpers
    
    private func initSelf() {
        view.backgroundColor = .orange
    }
    
    private func initConstraints() {
        productPropertiesButton.anchor(top: view.topAnchor, centerX: view.centerXAnchor, paddingTop: 100, width: 300, height: 50)
    }
}

