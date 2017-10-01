//
//  Rational.swift
//  SwiftAlgorithms
//
//  Created by Павел Тимош on 01.10.2017.
//  Copyright © 2017 Павел Тимош. All rights reserved.
//

import Foundation

class Rational {
    
    ///MARCK: Data section
    private var num: Int
    private var denom: UInt
    
    ///MARCK: Init section
    
    init() {
        num = 1
        denom = 1
    }
    
    init(num n: Int, denom d: UInt ) throws {
        num = n
        denom = d
        
        if d <= 0 {
            throw 1
        }
        
        
    }
    
    ///MARCK: Operation section
    
    
    ///MARCK: Special section
    
    func simplify() {
        let commonDivisor = gdc(abs(num), Int(denom) )
        
        num /= commonDivisor
        denom /= UInt(commonDivisor)
    }
    
    func gdc(_ n1: Int, _ n2: Int) -> Int {
        var a = n1, b = n2
        if a == 1 {
            return 1
        }
        
        while a != b {
            if a > b {
                a -= b
            } else {
                b -= a
            }
        }
        return a
    }
}
