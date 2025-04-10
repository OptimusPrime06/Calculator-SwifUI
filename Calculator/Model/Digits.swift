//
//  Digits.swift
//  Calculator
//
//  Created by Gulliver Raed on 4/10/25.
//

import Foundation

enum Digits : Int, CaseIterable, CustomStringConvertible {
    case one, two, three, four, five, six, seven, eight, nine, zero
    
    var description: String {
        return "\(rawValue)"
    }
}
