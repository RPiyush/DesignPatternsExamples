//
//  EmployeeCoordinator.swift
//  DesignPatternsExamples
//
//  Created by Piyush Rathi on 01/01/25.
//

import UIKit

class EmployeeCoordinator: NSObject {
    fileprivate let navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    /**
     Start Method
     - Push View to AboutVC
     */
    func start() {
        guard let vc = EmployeeViewController.instanceController(StoryBoards.main) as? EmployeeViewController else {
            return
        }
        navigationController.pushViewController(vc, animated: true)
    }
}
