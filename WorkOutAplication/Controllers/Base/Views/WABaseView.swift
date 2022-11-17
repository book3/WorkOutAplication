//
//  BaseView.swift
//  WorkOutAplication
//
//  Created by Yntymak on 13/11/22.
//

import UIKit

class WABaseView: UIView{
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
        constaintViews()
        configureAppearance()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


@objc extension WABaseView{
    func setupViews(){
        
    }
    func constaintViews(){
        
    }
    
    func configureAppearance(){
        
    }
}
