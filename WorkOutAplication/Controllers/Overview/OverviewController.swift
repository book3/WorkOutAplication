//
//  OverviewController.swift
//  WorkOutAplication
//
//  Created by Yntymak on 12/11/22.
//

import UIKit

class OverviewController: WABaseController {
    
    private let navBar = OverviewNavBar()
  
}


extension OverviewController{
    override func setupViews() {
        super.setupViews()
        
        view.addSubview(navBar)
        
    }
    
    override func constraintViews() {
        super.constraintViews()
        
        NSLayoutConstraint.activate([
            
            navBar.topAnchor.constraint(equalTo: view.topAnchor),
            navBar.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            navBar.trailingAnchor.constraint(equalTo: view.trailingAnchor)
            
        ])
    }
    
    override func configureAppearance() {
        super.configureAppearance()
        
        navigationController?.navigationBar.isHidden = true
        navBar.translatesAutoresizingMaskIntoConstraints = false
        
    }
}

@objc extension OverviewController{
    func allWorkoutsButtonAction(){
        print("ALL worouts button taped")
    }
}
