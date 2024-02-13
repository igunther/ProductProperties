//
//  ProductPropertiesController.swift
//  ProductProperties
//
//  Created by Øystein Günther on 13/02/2024.
//

import UIKit

final class ProductPropertiesController: UIViewController {
    
    // MARK: - Properties
    
    // MARK: - Lifecycle
    
    deinit {
        print("OS reclaiming memory for ProductProperties")
    }
    
    init(/*some protocol*/) {
        //self.protocol = some proocol
        super.init(nibName: nil, bundle: nil)
        title = ""
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initSelf()
        initConstraints()
    }
    
    // MARK: - Helpers
    
    private func initSelf() {
        
    }
    
    private func initConstraints() {
        
    }
}
