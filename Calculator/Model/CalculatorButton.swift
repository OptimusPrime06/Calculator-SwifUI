//
//  ButtonType.swift
//  Calculator
//
//  Created by Gulliver Raed on 4/10/25.
//

import SwiftUI

enum CalculatorButton: Hashable, CustomStringConvertible {
    case digit(_ digit: Digits)
    case operation(_ operation: ArithmaticOperations)
    case negative
    case percentage
    case decimal
    case equals
    case allClear
    case clear
    
    var description: String {
        switch self {
        case .digit(let digit):
            return digit.description
        case .operation(let operation):
            return operation.description
        case .negative:
            return "±"
        case .percentage:
            return "%"
        case .decimal:
            return "."
        case .equals:
            return "="
        case .allClear:
            return "AC"
        case .clear:
            return "C"
        }
    }
    
    var backgroundColor : Color {
        switch self {
        case .digit, .decimal:
            return .secondary
        case .operation, .equals:
            return .orange
        case .allClear, .clear, .percentage, .negative:
            return Color(.lightGray)
            
        }
    }
    
    var foregroundColor : Color {
        switch self {
        case .allClear, .clear, .negative, .percentage:
            return .black
        default:
            return .white
        }
    }
}
