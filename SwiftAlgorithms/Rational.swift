//
//  Rational.swift
//  SwiftAlgorithms
//
//  Created by Павел Тимош on 01.10.2017.
//  Copyright © 2017 Павел Тимош. All rights reserved.
//

import Foundation


/// Рациональная дробь
struct Rational<N: SignedInteger, D: UnsignedInteger> {
//    var magnitude: N
    
//    typealias Magnitude = N
//    typealias IntegerLiteralType = N
    
    
    ///MARCK: Data section
    
    /// Числитель дроби
    private var num: N
    /// Знаменатель дроби
    private var denom: D
    
    ///MARCK: Init section
    
    init() {
        num = 1
        denom = 1
    }
    
    init(num n: N, denom d: D ) /*throws*/ {
        let r = simplify(a: n, b: d)
        num = r.0
        denom = r.1
        
//        if d <= 0 {
////            throw 1
//            print("Denominator is not valid. Should be great zero.")
//        }

    }
    
    init?<T>(exactly source: T) where T : UnsignedInteger {
        num = 1
        denom = D(source)
    }
    
    
    
    /// Изменяет экземпляр Rational и возвращает его копию.
    ///
    /// - Parameters:
    ///   - n: новый числитель
    ///   - d: новый знаменатель
    /// - Returns: возвращает экземпляр Rational
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
    
    ///MARCK: Arithmetic operation section
    
    static func + (left:  Rational, right: Rational ) -> Rational {
        let n = left.num * N(right.denom) + right.num * N(left.denom)
        let d = left.denom * right.denom
        let r =  Rational(num: n, denom: d)
        return r
    }
    
    static func += (left:  inout Rational, right: Rational ) {
        left =  left + right
    }
    
    static func - (left:  Rational, right: Rational ) -> Rational {
        let n = left.num * N(right.denom) - right.num * N(left.denom)
        let d = left.denom * right.denom
        let r =  Rational(num: n, denom: d)
        return r
    }
    
    static func -= (left:  inout Rational, right: Rational ) {
        left =  left - right
    }
    
    static func *(lhs: Rational<N, D>, rhs: Rational<N, D>) -> Rational<N, D> {
        let n = lhs.num * rhs.num
        let d = lhs.denom * rhs.denom
        return Rational(num: n, denom: d)
    }
    
    static func *=(lhs: inout Rational<N, D>, rhs: Rational<N, D>) {
        lhs = lhs * rhs
    }
    
    static func /(lhs: Rational<N, D>, rhs: Rational<N, D>) -> Rational<N, D> {
        let n = lhs.num * N(rhs.denom)
        let d = lhs.denom * D(rhs.num)
        return Rational(num: n, denom: d)
    }
    
    static func /=(lhs: inout Rational<N, D>, rhs: Rational<N, D>) {
        lhs = lhs / rhs
    }
    
    ///MARCK: Сomparison operation section
    
    static func < (left: Rational, right: Rational) -> Bool {
        let cd = gcd( left.denom, right.denom )
        return left.num * N(right.denom / cd ) < right.num * N(left.denom / cd)
    }
    
    static func ==(lhs: Rational, rhs: Rational) -> Bool {
        let cd = gcd( lhs.denom, rhs.denom )
        return lhs.num * N(rhs.denom / cd) == rhs.num * N(lhs.denom / cd)
    }
    
    static func !=(lhs: Rational, rhs: Rational) -> Bool {
        let cd = gcd( lhs.denom, rhs.denom )
        return lhs.num * N(rhs.denom / cd) != rhs.num * N(lhs.denom / cd)
    }
    
    
    ///MARCK: Special

    
}

/// Наибольший общий делитель
///
/// - Parameters:
///   - n1: первое число
///   - n2: второе число
/// - Returns: наибольший общий делитель
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
fileprivate func simplify<S: SignedInteger, U: UnsignedInteger>(a: S, b: U) -> (S, U) {
    let commonDivisor = gcd(U(abs(a)), b )
    return (a / S(commonDivisor) , b / commonDivisor)
}
