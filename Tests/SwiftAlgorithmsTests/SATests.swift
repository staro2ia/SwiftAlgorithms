//
//  SATest.swift
//  SATest
//
//  Created by Павел Тимош on 12.12.2017.
//  Copyright © 2017 Павел Тимош. All rights reserved.
//

@testable import SwiftAlgorithms

import XCTest

class SATest: XCTestCase {
    
//    override func setUp() {
//        super.setUp()
//        // Put setup code here. This method is called before the invocation of each test method in the class.
//    }
//
//    override func tearDown() {
//        // Put teardown code here. This method is called after the invocation of each test method in the class.
//        super.tearDown()
//    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        let r = Rational<Int, UInt>(num: 3, denom: 5)
        
        XCTAssertTrue(r == r)
    }
    
//    func testPerformanceExample() {
//        // This is an example of a performance test case.
//        self.measure {
//            // Put the code you want to measure the time of here.
//        }
//    }
    
}
