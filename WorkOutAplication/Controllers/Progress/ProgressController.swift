//
//  ProgressController.swift
//  WorkOutAplication
//
//  Created by Yntymak on 12/11/22.
//

import UIKit

class ProgressController: WABaseController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Workout Progress"
        navigationController?.tabBarItem.title = R.Strings.TabBar.title(for: .progress)
        
        addNavBarButton(at: .left, with: "Export")
        addNavBarButton(at: .right, with: "Details")
        
    }


}
