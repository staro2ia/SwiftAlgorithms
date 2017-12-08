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
        value.append(litera.char)
    }
    
    mutating func next(litera: Litera) {
        value.append(litera.char)
    }
    
    func print() {
        Swift.print("\(value)")
    }
    
}
