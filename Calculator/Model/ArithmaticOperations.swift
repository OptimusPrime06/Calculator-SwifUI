//
//  ArithmaticOperations.swift
//  Calculator
//
//  Created by Gulliver Raed on 4/10/25.
//

import Foundation

enum ArithmaticOperations: CaseIterable, CustomStringConvertible {
    case addition, subtraction, multiplication, division
    
    var description: String {
        switch self {
        case .addition:
            return "+"
        case .subtraction:
            return "-"
        case .multiplication:
            return "×"
        case .division:
            return "÷"
        }
    }
}
