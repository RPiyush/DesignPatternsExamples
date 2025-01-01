//
//  EmployeesViewModel.swift
//  DesignPatternsExamples
//
//  Created by Piyush Rathi on 31/12/24.
//

import Foundation

class EmployeesViewModel: NSObject {
    private var apiService: APIService!

    private(set) var empData: EmployeeModel! {
        didSet {
            bindEmployeeViewModelToController()
        }
    }

    var bindEmployeeViewModelToController: (() -> ()) = { }

    override init() {
        super.init()
        apiService = APIService()
        setUpEmployeeData()
    }

    private func setUpEmployeeData() {
        apiService.apiToGetEmployeeData { empModel in
            self.empData = empModel
        }
    }
}
