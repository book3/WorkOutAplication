//
//  BaseController.swift
//  WorkOutAplication
//
//  Created by Yntymak on 12/11/22.
//

import UIKit

enum NavBarPosintion{
    case left
    case right
}

class WABaseController: UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        constraintViews()
        configureAppearance()
    }
    
}


@objc extension WABaseController{
    func setupViews(){
        
    }
    func constraintViews(){
        
    }
    
    func navBarLeftButtonHandler(){
        print("left nav bar button pressed")
    }
    
    func navBarRightButtonHandler(){
        print("right nav bar button pressed")
    }
    
    func configureAppearance(){
        view.backgroundColor = R.Colors.background
    }
}

extension WABaseController{
    func addNavBarButton(at position: NavBarPosintion, with title: String){
        let button = UIButton(type: .system)
        button.setTitle(title, for: .normal)
        button.setTitleColor(R.Colors.active, for: .normal)
        button.setTitleColor(R.Colors.inactive, for: .disabled)
        button.titleLabel?.font = R.Fonts.helveticaRegular(with: 17)
        
        
        switch position{
        case .left:
            button.addTarget(self, action: #selector(navBarLeftButtonHandler), for: .touchUpInside)
            navigationItem.leftBarButtonItem = UIBarButtonItem(customView: button)
        case .right:
            button.addTarget(self, action: #selector(navBarRightButtonHandler), for: .touchUpInside)
            navigationItem.rightBarButtonItem = UIBarButtonItem(customView: button)
        }
        
    }
    
    func setTitleForNavBarButton(_ title: String, at position: NavBarPosintion){
        
        switch position{
        case .left:
            (navigationItem.leftBarButtonItem?.customView as? UIButton)?.setTitle(title, for: .normal)
        case .right:
            (navigationItem.rightBarButtonItem?.customView as? UIButton)?.setTitle(title, for: .normal)
        }
        
    }
    
}
