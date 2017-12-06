//
//  FSM_Model.swift
//  SwiftAlgorithms
//
//  Created by Павел Тимош on 06.12.2017.
//  Copyright © 2017 Павел Тимош. All rights reserved.
//

import Foundation

/// Конечный автомат
struct FSM_Model {
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
    
    
    ///MARK: Methods
    
    func start() {
        <#function body#>
    }
    
    func processS0(litera: Litera, lexem: Lexema) {
        <#function body#>
    }
    
    func processNextLiter(litera: Litera, lexem: Lexema) {
        <#function body#>
    }
    
    func processStop() {
        <#function body#>
    }
    
    func processError() {
        <#function body#>
    }
    
}

