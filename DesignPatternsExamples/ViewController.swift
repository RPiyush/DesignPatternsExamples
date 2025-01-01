//
//  ViewController.swift
//  DesignPatternsExamples
//
//  Created by Piyush Rathi on 31/12/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    private var tableViewArray = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = "Design Patterns"
        setupView()
    }

    private func setupView() {
        tableViewArray.append("MVC Pattern")
        tableViewArray.append("MVVM Pattern")
    }

    private func showCommingSoonAlert() {
        let vc = UIAlertController(title: "", message: "Feature Coming Soon..", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .cancel)
        vc.addAction(okAction)
        self.present(vc, animated: true)
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        tableViewArray.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tableCell = UITableViewCell(style: .default, reuseIdentifier: "Cell")
        tableCell.textLabel?.text = tableViewArray[indexPath.row]
        tableCell.selectionStyle = .blue
        tableCell.accessoryType = .disclosureIndicator
        return tableCell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let value = tableViewArray[indexPath.row]
        switch DesignPatterns(rawValue: value) {
        case .mvvm:
            guard  let nvc = self.navigationController else {
                print("No storyboard with this identifier")
                return
            }
            let vc = EmployeeCoordinator(navigationController: nvc)
            vc.start()
        default:
            showCommingSoonAlert()
        }
    }
}

enum DesignPatterns: String {
    case mvc = "MVC Pattern"
    case mvvm = "MVVM Pattern"
}
