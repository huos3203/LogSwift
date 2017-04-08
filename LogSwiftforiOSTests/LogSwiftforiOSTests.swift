//
//  LogSwiftforiOSTests.swift
//  LogSwiftforiOSTests
//
//  Created by huoshuguang on 2017/4/8.
//  Copyright © 2017年 PBBReader. All rights reserved.
//

import XCTest
@testable import LogSwift
class LogSwiftforiOSTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let model = PBBLogModel.init(type: .DEBUG, APPNam: .PBBMaker, description: "test")//.description
        print(model.description)
        let eee = model.aesEncryptPassword(password: "dddd", secret: "dddd")
        print(eee)
        let ddd = model.aesDecryptor(password: eee, secret: "dddd")
        print(ddd)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
