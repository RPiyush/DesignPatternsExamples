//
//  SingletonClass.swift
//  DesignPatternsExamples
//
//  Created by Piyush Rathi on 01/01/25.
//

import Foundation

final class SingletonClass {
    static let sharedInstance = SingletonClass()

    private init() {
    }

    func appendName(firstName: String, lastName: String) -> String {
        firstName + " " + lastName
    }
}
