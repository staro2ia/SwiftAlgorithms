//
//  Parser.swift
//  SwiftAlgorithms
//
//  Created by Павел Тимош on 07/10/2018.
//

import Foundation

func parser(string s: String) -> [(String, Character)] {
    if s[s.startIndex] == "T" {
        return [(s, s[s.startIndex])]
    }
    return []
}

