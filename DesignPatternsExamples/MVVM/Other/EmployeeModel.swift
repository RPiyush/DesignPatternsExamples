//
//  EmployeeModel.swift
//  DesignPatternsExamples
//
//  Created by Piyush Rathi on 31/12/24.
//

struct EmployeeModel: Decodable {
    let users: [EmployeeData]
}

// MARK: - EmployeeData
struct EmployeeData: Decodable {
    let firstName, employeeSalary, lastName: String
    let profileImage: String
    let idInt: Int
    let age: Int

    enum CodingKeys: String, CodingKey {
        case idInt = "id"
        case firstName = "firstName"
        case lastName = "lastName"
        case employeeSalary = "birthDate"
        case age = "age"
        case profileImage = "image"
    }
}
