//
//  FSM_Model.swift
//  SwiftAlgorithms
//
//  Created by Павел Тимош on 06.12.2017.
//  Copyright © 2017 Павел Тимош. All rights reserved.
//

import Foundation

/// Конечный автомат
class FSM_Model {
    ///MARK: Types
    
    /// Состояния автомата.
    ///
    /// - S0: начальное состояние (ожидание первой буквы)
    /// - nextLiter: ожидание очередной литеры идентификатора
    /// - stop: конец текста (завершающее состояние)
    /// - error: Ошибка (завершающее состояние)
    enum StateType {
        case S0
        case nextLiter
        case stop
        case error
    }
    
    ///MARK: Fields
    
    /// Состояние автомата
    var state = StateType.S0
    var input = InputString(string: "Fjhdj d hjskdf jfhs78sf7 7sd7fs6 6777 yfysdugfu")
    var output = OutputString()
    var lexema = Lexema()

    ///MARK: Methods
    
    func start() {
        while true {
            let lit = getInputType(char: input.getChar())
            switch state {
            case .S0:
                processS0(litera: lit, lexem: lex)
            case .nextLiter:
                processNextLiter(litera: lit)
            case .error:
                processError()
            case .stop:
                processStop()
            }
        }
    }
    
    func processS0(litera: Litera) {
        switch litera {
        case .space:
            state = .S0
        case .letter(_):
            state = .nextLiter
            lexema.first(litera: litera)
        case .EOF:
            state = .stop
        default:
            state = .error
        }
    }
    
    func processNextLiter(litera: Litera) {
        switch litera {
        case .space:
            state = .S0
        case .letter(_), .digit(_):
            state = .nextLiter
            lexema.next(litera: litera)
        case .EOF:
            state = .stop
            lexema.print()
        default:
            state = .error
        }
    }
    
    func processStop() {
        print("Stopped successfully")
    }
    
    func processError() {
        print("Stopped in error state")
    }
    
}

