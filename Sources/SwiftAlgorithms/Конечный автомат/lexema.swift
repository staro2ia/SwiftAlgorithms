//
//  lexema.swift
//  SwiftAlgorithms
//
//  Created by Павел Тимош on 06.12.2017.
//  Copyright © 2017 Павел Тимош. All rights reserved.
//

import Foundation


/// Лексема языка
struct Lexema {
    var value = [Character]()
    
    mutating func first(litera: Litera) {
        switch litera {
        case .digit(let char), .letter(let char):
            value.append(char)
        default:
            return
        }
    }
    
    mutating func next(litera: Litera) {
        switch litera {
        case .digit(let char), .letter(let char):
            value.append(char)
        default:
            return
        }
    }
    
    func print() {
        Swift.print("\(value)")
    }
    
}
