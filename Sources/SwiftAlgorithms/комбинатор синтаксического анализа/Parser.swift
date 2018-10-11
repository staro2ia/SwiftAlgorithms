//
//  Parser.swift
//  SwiftAlgorithms
//
//  Created by Павел Тимош on 07/10/2018.
//

import Foundation

func symbola(string s: Character) -> [(Character, Character)] {
    if s == "T" {
        return [(s, "T")]
    }
    
    return []
}

func symbol(string s: String) -> [(String, Character)] {
    if s.isEmpty {
        return []
    }
    
    
    var res = [(String, Character)]()
    for x in s {
        if x == "T" {
            res.append( (s, x) )
        }
    }
    
    return res
}
