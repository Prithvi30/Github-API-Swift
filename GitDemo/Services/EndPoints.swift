//
//  EndPoints.swift
//  GitDemo
//
//  Created by Test on 21/11/20.
//  Copyright © 2020 Test. All rights reserved.
//

import Foundation

protocol EndPoints {
    
    var scheme: String { get }
    
    // Example: "github.com"
    var baseUrl: String { get }
    
    // GET/POST
    var method: String { get }
    
    var path: String { get }
    
    var parameter: [URLQueryItem] { get }
    
}
