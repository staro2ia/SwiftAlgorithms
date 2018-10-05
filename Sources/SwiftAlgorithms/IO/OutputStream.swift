//
//  OutputStream.swift
//  SwiftAlgorithms
//
//  Created by Павел Тимош on 08.12.2017.
//  Copyright © 2017 Павел Тимош. All rights reserved.
//

import Foundation

/// Строковый поток вывода
class OutputString: OutputProtocol {
    /// строка вывода потока.
    /// Хранит весь вывод, сделаный в поток.
    var data = String()

    func putChar(char: Character) {
        data.append(char)
    }

}
