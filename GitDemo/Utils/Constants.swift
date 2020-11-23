//
//  Constants.swift
//  GitDemo
//
//  Created by Test on 22/11/20.
//  Copyright © 2020 Test. All rights reserved.
//

import Foundation
import UIKit

var searchName: String?
var searchLanguage: String?

//Default values
let defaultSearchName = "language:swift"
let defaultSearchLanguage = "Swift"
let pageItems = 100
var urlString: String = ""
let tableViewCellHeight: CGFloat = 120.0

@IBDesignable extension UINavigationController {
    @IBInspectable var barTintColor: UIColor? {
        set {
            guard let uiColor = newValue else { return }
            navigationBar.barTintColor = uiColor
        }
        get {
            guard let color = navigationBar.barTintColor else { return nil }
            return color
        }
    }
}
