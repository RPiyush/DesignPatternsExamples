//
//  EmployeeViewController.swift
//  DesignPatternsExamples
//
//  Created by Piyush Rathi on 31/12/24.
//

import UIKit

class EmployeeViewController: UIViewController {

    @IBOutlet weak var empTableView: UITableView!

    private var model: EmployeesViewModel!
    private var dataSource: EmployeeTableViewDataSource<EmployeeTableViewCell, EmployeeData>!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupView()
    }

    private func setupView() {
        model = EmployeesViewModel()
        model.bindEmployeeViewModelToController = {
            self.updateTable()
        }
    }

    private func updateTable() {
        self.dataSource = EmployeeTableViewDataSource(cellIdentifier: "EmployeeTableViewCell", items: self.model.empData.users, configureCell: { (cell, evm) in
            cell.employeeIdLabel.text = "\(evm.idInt)."
            cell.employeeNameLabel.text = evm.firstName + " " + evm.lastName
        })

        DispatchQueue.main.async {
            self.empTableView.dataSource = self.dataSource
            self.empTableView.reloadData()
        }
    }
}
