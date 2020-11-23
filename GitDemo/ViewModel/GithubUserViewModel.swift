//
//  GithubUserViewModel.swift
//  GitDemo
//
//  Created by Test on 21/11/20.
//  Copyright © 2020 Test. All rights reserved.
//

import Foundation

class GithubUserViewModel: NSObject{
    
    let network = NetworkManager.shared
    
    func fetchGitHubUserData(completion: @escaping ([Item]) -> ()) {
        network.request(endpoint: GithubEndPoints.getSearchResults(searchName ?? defaultSearchName, page: pageItems)) { (result: Result<GithubUserModel, Error>) in
            switch result {
            case .success(let response):
                completion(response.items)
            case .failure(let error):
                print(error)
            }
        }
    }
}
