//
//  Rational.swift
//  SwiftAlgorithms
//
//  Created by Павел Тимош on 01.10.2017.
//  Copyright © 2017 Павел Тимош. All rights reserved.
//

import Foundation


/// Рациональная дробь
struct Rational<N: SignedInteger, D: UnsignedInteger>: Numeric, Equatable {
    var magnitude: N
    
    typealias Magnitude = N
    typealias IntegerLiteralType = N
    
    
    ///MARCK: Data section
    
    
    private var num: N
    private var denom: D
    
    ///MARCK: Init section
    
    init() {
        num = 1
        denom = 1
    }
    
    init(num n: N, denom d: D ) /*throws*/ {
        let r = simplify(a: n, b: d)
        num = n
        denom = d
        
//        if d <= 0 {
////            throw 1
//            print("Denominator is not valid. Should be great zero.")
//        }

    }
    
    init?<T>(exactly source: T) where T : BinaryInteger {
        num = Int(source)
        denom = 1
    }
    
    
    
    mutating func assign(num n: N, denom d: D) -> Rational {
        let r = simplify(a: n, b: d)
        num = r.0
        denom = r.1
        
//        if d <= 0 {
//            //            throw 1
//            print("Denominator is not valid. Should be great zero.")
//        }

        
        return self
    }
    
    ///MARCK: Operation section
    
    static func + (left:  Rational, right: Rational ) -> Rational {
        let n = left.num * N(right.denom) + right.num * N(left.denom)
        let d = left.denom * right.denom
        let r =  Rational(num: n, denom: d)
        
        return r
    }
    
    static func += (left:  inout Rational, right: Rational ) -> Rational {
        left =  left + right
        return left
    }
    
    static func *(lhs: Rational<N, D>, rhs: Rational<N, D>) -> Rational<N, D> {
        <#code#>
    }
    
    static func *=(lhs: inout Rational<N, D>, rhs: Rational<N, D>) {
        <#code#>
    }
    
    
    static func < (left: Rational, right: Rational) -> Bool {
        let cd = gcd( left.denom, right.denom )
        return left.num * N(right.denom) / cd < right.num * N(left.denom) / cd
    }
    
    static func ==(lhs: Rational, rhs: Rational) -> Bool {
        let cd = gcd( lhs.denom, rhs.denom )
        return lhs.num * N(rhs.denom) / cd == rhs.num * N(lhs.denom) / cd
    }
    
    
    ///MARCK: Special section
    

}

fileprivate func gcd<T: Numeric & Comparable>(_ n1: T, _ n2: T) -> T {
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


/// Сокращает два числа на НОД
///
/// - Parameters:
///   - a: первое число
///   - b: второе число
/// - Returns: пара сокращенных чисел
fileprivate func simplify<T: BinaryInteger & Comparable>(a: T, b: T) -> (T, T) {
    let commonDivisor = gcd(abs(a), b )
    return (a / commonDivisor , b / commonDivisor)
}
