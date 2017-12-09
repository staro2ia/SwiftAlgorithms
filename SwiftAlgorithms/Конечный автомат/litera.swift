//
//  Litera.swift
//  SwiftAlgorithms
//
//  Created by Павел Тимош on 06.12.2017.
//  Copyright © 2017 Павел Тимош. All rights reserved.
//

import Foundation

/// Типы входных сигналов автомата
///
/// - EOF: конец файла
/// - space: символ пробельной группы
/// - letter: латинская буква
/// - digit: десятичная цифра
/// - noAlp: запрещенный символ
enum InputType {
    case EOF
    case space
    case letter (Character)
    case digit (Character)
    case noAlp
    
    func getInputType(char: Character) -> InputType {
        switch char {
        case "\0":
            return .EOF
        case "a"..."z", "A"..."Z":
            return .letter(char)
        case "0"..."9":
            return .digit(char)
        case " ", "\t", "\n":
            return .space
        default:
            return .noAlp
        }
    }
}

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
//        case "\0":
//            return .EOF
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

/// Литера текста
//struct Litera {
//    var char: Character
//    var synTerm: InputType
//
//    mutating func getLiteral(character ch: Character) -> InputType {
//        char = ch
//
//    }
//
//}

//fileprivate func isAlpha(char: Character) -> Bool {
//    if  case "a"..."z" = char {
//        return true
//    }
//    return false
//}
//
//fileprivate func isDigit(char: Character) -> Bool {
//    if case "0"..."9" = char {
//        return true
//    }
//    return false
//}

