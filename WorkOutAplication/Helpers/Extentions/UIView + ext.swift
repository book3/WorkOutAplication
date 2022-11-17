//
//  UIView + ext.swift
//  WorkOutAplication
//
//  Created by Yntymak on 12/11/22.
//

import UIKit

extension UIView{
    func addBottomBorder(with color: UIColor, height: CGFloat){
        let sepatator = UIView()
        sepatator.backgroundColor = color
        sepatator.autoresizingMask = [ .flexibleWidth, .flexibleHeight]
        sepatator.frame = CGRect(x: 0, y: frame.height - height, width: frame.width, height: height)
        
        addSubview(sepatator)
    }
    
    func makeSystem(_ button: UIButton){
        button.addTarget(self, action: #selector(handleIn), for: [
            .touchDown,
            .touchDragInside
        ])
        button.addTarget(self, action: #selector(handleOut), for: [
            .touchDragOutside,
            .touchUpInside,
            .touchUpOutside,
            .touchDragExit,
            .touchCancel
        ])
    }
    
    @objc func handleIn() {
        UIView.animate(withDuration: 0.15) {
            self.alpha = 0.55
        }
    }
    @objc func handleOut() {
        UIView.animate(withDuration: 0.15) {
            self.alpha = 1
        }
    }
    
    func setupView(_ view: UIView){
        addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
    }
}
