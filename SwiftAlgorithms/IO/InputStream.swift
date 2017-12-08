//
//  InputStream.swift
//  SwiftAlgorithms
//
//  Created by Павел Тимош on 08.12.2017.
//  Copyright © 2017 Павел Тимош. All rights reserved.
//

import Foundation


/// Строковый поток ввода.
struct InputString: InputProtocol {
    
    private var data: String
    private var i: String.Iterator
    
    init(string: String) {
        data = string
        i = data.makeIterator()
    }
    
    mutating func getChar() -> Character? {
        return i.next()
    }
}
