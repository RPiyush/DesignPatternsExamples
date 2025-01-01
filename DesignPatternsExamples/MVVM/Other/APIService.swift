//
//  APIService.swift
//  DesignPatternsExamples
//
//  Created by Piyush Rathi on 31/12/24.
//

import Foundation

class APIService: NSObject {

    private let sourcesURL = URL(string: "https://dummyjson.com/users")!

    func apiToGetEmployeeData(completion: @escaping (EmployeeModel) -> ()) {
        URLSession.shared.dataTask(with: sourcesURL) { (data, urlResponse, error) in
            if let data = data {
                do {
                    let jsonDecoder = JSONDecoder()
                    let empData = try jsonDecoder.decode(EmployeeModel.self, from: data)
                    completion(empData)
                } catch {
                    print(error)
                }
            }
        }.resume()
    }
}
