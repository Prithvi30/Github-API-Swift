//
//  GithubEndPoints.swift
//  GitDemo
//
//  Created by Test on 21/11/20.
//  Copyright © 2020 Test. All rights reserved.
//

import Foundation

enum GithubEndPoints: EndPoints {
    case getSearchResults(_ q: String, page: Int)
}

extension GithubEndPoints {
    
    var scheme: String {
        switch self {
        default:
            return "https"
        }
    }
    
    var baseUrl: String {
        switch self {
        case .getSearchResults:
            return "api.github.com"
        }
    }
    
    var path: String {
        switch self {
        case .getSearchResults:
            return "/search/repositories"
        }
    }
    
    var parameter: [URLQueryItem] {
        switch self {
        case .getSearchResults(let q, let page):
            return [URLQueryItem(name: "q", value: q),
                    URLQueryItem(name: "per_page", value: String(page))]
        }
    }
    
    var method: String {
        switch self {
        default:
            return "GET"
        }
    }
        
}
