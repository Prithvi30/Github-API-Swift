//
//  NetworkManagerTests.swift
//  GitDemoTests
//
//  Created by Test on 23/11/20.
//  Copyright © 2020 Test. All rights reserved.
//

@testable import GitDemo
import Foundation
import XCTest

class NetworkManagerTests: XCTestCase {

    var manager: NetworkManager!
    var mockManager: URLSession {
        let configuration = URLSessionConfiguration.default
        let manager = URLSession(configuration: configuration)
        return manager
    }
//
    override func setUp() {
        manager = NetworkManager()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func test_get_request_withURL() {
        guard let url = URL(string: "https://mockurl") else {
            fatalError("URL can't be empty")
        }
        XCTAssertNotNil(url)
        let expectation = self.expectation(description: "Fetch data")
        manager.request(endpoint: GithubEndPoints.getSearchResults("language:swift", page: 20)) { (result: Result<GithubUserModel, Error>) in
            XCTAssertNotNil(result)
           switch result {
            case .success(let response):
                XCTAssertNotNil(response.items)
            expectation.fulfill()
            case .failure(let error):
                XCTAssertNil(error)
                expectation.fulfill()
            }
        }
        waitForExpectations(timeout: 5, handler: nil)
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
