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
    
    func testEquetable() {
        let r = Rational<Int, UInt>(num: 3, denom: 5)
        
        XCTAssertTrue(r == r)
    }
    
    func testPrint() {
        let r = Rational<Int, UInt>(num: 3, denom: 5)
        
        XCTAssertEqual("\(r)", "3 / 5")
    }
    
    func testArithmetic() {
        let r1 = Rational<Int, UInt>(num: 4, denom: 5)
        let r2 = Rational<Int, UInt>(num: 1, denom: 5)
        let res1 = Rational<Int, UInt>(num: 3, denom: 5)
        
        XCTAssertEqual(r1 - r2, res1)
    }
    
    func testComparation() {
        let r1 = Rational<Int, UInt>(num: 4, denom: 5)
        let r2 = Rational<Int, UInt>(num: 1, denom: 5)
        
        XCTAssertGreaterThan(r1, r2)
    }
}
