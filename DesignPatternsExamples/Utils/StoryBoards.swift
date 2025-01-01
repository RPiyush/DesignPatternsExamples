//
//  StoryBoard.swift
//  DesignPatternsExamples
//
//  Created by Piyush Rathi on 01/01/25.
//


import UIKit

/// Module Wise Story Board Names
enum StoryBoards: String {
    case main = "Main"

    func storyboard() -> UIStoryboard {
        return UIStoryboard(name: self.rawValue, bundle: nil)
    }
}

extension UIViewController {
    /// to get instance of VC
    ///
    /// - Parameter storyboard: name of storyboard
    /// - Returns: instance of VC
    class func instanceController(_ storyboard: StoryBoards) -> UIViewController? {
        return storyboard.storyboard().instantiateViewController(withIdentifier: self.nameOfClass)
    }
}

extension NSObject {
    /// It will return name of class
    static var nameOfClass: String {
        guard let className = NSStringFromClass(self).components(separatedBy: ".").last else {
            return ""
        }
        return className
    }

    /// Getting ClassName in string format
    class var className: String {
        return String(describing: self)
    }
}
