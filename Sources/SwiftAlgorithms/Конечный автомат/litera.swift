//
//  Litera.swift
//  SwiftAlgorithms
//
//  Created by Павел Тимош on 06.12.2017.
//  Copyright © 2017 Павел Тимош. All rights reserved.
//

import Foundation


/// Типы литер
///
/// - EOF: конец файла
/// - space: символ пробельной группы
/// - letter: латинская буква
/// - digit: десятичная цифра
/// - noAlp: запрещенный символ
enum Litera {
    case EOF
    case space
    case letter (Character)
    case digit (Character)
    case noAlp
}

func getInputType(char: Character?) -> Litera {
    if let ch = char {
        switch ch {
        case "a"..."z", "A"..."Z":
            return .letter(ch)
        case "0"..."9":
            return .digit(ch)
        case " ", "\t", "\n":
            return .space
        default:
            return .noAlp
        }
    }
    return .EOF
}

