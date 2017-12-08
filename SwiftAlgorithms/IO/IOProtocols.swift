//
//  IOProtocol.swift
//  SwiftAlgorithms
//
//  Created by Павел Тимош on 08.12.2017.
//  Copyright © 2017 Павел Тимош. All rights reserved.
//

import Foundation

/// Протокол ввода
protocol InputProtocol {
    func getChar() -> Character
}


/// Протокол вывода
protocol OutputProtocol {
    func putChar(char: Character)
}

