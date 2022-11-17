//
//  SessionController.swift
//  WorkOutAplication
//
//  Created by Yntymak on 12/11/22.
//

import UIKit

class SessionController: WABaseController {
    
    private let timerView = TimerView()
    private var timerDuration = 6000.0
    
    override func navBarLeftButtonHandler() {
        if timerView.state == .isStopped{
            timerView.startTimer()
        }else{
            timerView.pauseTimer()
        }
        timerView.state = timerView.state == .isRuning ? .isStopped : .isRuning
        setTitleForNavBarButton(timerView.state == .isRuning ?
                                R.Strings.Sessions.navBarPause
                                : R.Strings.Sessions.navBarStart, at: .left)
    }
    
    override func navBarRightButtonHandler() {
        timerView.stopTimer()
        
        timerView.state = .isStopped
        setTitleForNavBarButton(R.Strings.Sessions.navBarStart, at: .left)
    }
    
}


extension SessionController{
    override func setupViews() {
        super.setupViews()
        
        view.setupView(timerView)
        
    }
    
    override func constraintViews() {
        super.constraintViews()
        
        NSLayoutConstraint.activate([
            timerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            timerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 15),
            timerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15)
        ])
    }
    override func configureAppearance() {
        super.configureAppearance()
        title = "High Intensity Cardio"
        navigationController?.tabBarItem.title = R.Strings.TabBar.title(for: .session)
        
        addNavBarButton(at: .left, with: R.Strings.Sessions.navBarStart)
        addNavBarButton(at: .right, with: R.Strings.Sessions.navBarFinish)
        
        timerView.configure(with: timerDuration, progress: 0.0)
    }
}
