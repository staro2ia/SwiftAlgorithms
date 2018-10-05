//
//  main.swift
//  SwiftAlgorithms
//
//  Created by Павел Тимош on 01.10.2017.
//  Copyright © 2017 Павел Тимош. All rights reserved.
//

import Foundation

print("Hello, World!")

//let rel =  Rational<Int, UInt>(num: 1, denom: 3)
//let rel2 = Rational<Int, UInt>(num: 2, denom: 3)
//
//var relV = Rational<Int, UInt>()
//
//relV = rel;
//
//print(rel / rel2)


let testString = "Id"
let input = InputString(string:testString)
let fms = FSM_Model(input: input, output: OutputString() )

fms.start()

