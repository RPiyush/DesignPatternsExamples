//
//  EmployeeTableViewCell.swift
//  DesignPatternsExamples
//
//  Created by Piyush Rathi on 31/12/24.
//

import UIKit

class EmployeeTableViewCell: UITableViewCell {

    @IBOutlet weak var employeeIdLabel: UILabel!
    @IBOutlet weak var employeeNameLabel: UILabel!

    var employee: EmployeeData? {
        didSet {
            employeeIdLabel.text = "\(employee?.idInt ?? 0)"
            employeeNameLabel.text = employee?.firstName
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }

}
