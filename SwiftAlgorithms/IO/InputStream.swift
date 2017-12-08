//
//  InputStream.swift
//  SwiftAlgorithms
//
//  Created by Павел Тимош on 08.12.2017.
//  Copyright © 2017 Павел Тимош. All rights reserved.
//

import Foundation


struct InputString: InputProtocol {
    
    var data: String
    var i: String.Iterator
    
    init(string: String) {
        data = string
        i = data.makeIterator()
    }
    
    mutating func getChar() -> Character? {
        return i.next()
    }
}
