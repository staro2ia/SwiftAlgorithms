//
//  FSMTests.swift
//  SwiftAlgorithmsTests
//
//  Created by Павел Тимош on 16.12.2017.
//

import XCTest

@testable import SwiftAlgorithms

class FSMTests: XCTestCase {

    func test() {
        let testString = "Id"
        let input = InputString(string:testString)
        let fms = FSM_Model(input: input, output: OutputString() )
        
        fms.start()
        
        
    }
    
}
