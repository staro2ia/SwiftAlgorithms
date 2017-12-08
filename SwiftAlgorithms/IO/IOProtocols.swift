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
    /// Функция ввода символа
    ///
    /// - Returns: очередной символ из потока
    mutating func getChar() -> Character?
}


/// Протокол вывода
protocol OutputProtocol {
    /// Функция вывода символа в поток
    ///
    /// - Parameter char: символ, который выводится в поток
    mutating func putChar(char: Character)
}

