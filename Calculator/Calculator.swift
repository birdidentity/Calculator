//
//  Calculator.swift
//  Calculator
//
//  Created by Vladislav Boyko on 11/5/19.
//  Copyright © 2019 Buckwheat. All rights reserved.
//

import Foundation

struct Calculator {
    var result: Double = 0
    var operand: Double
    var operation: String
}

enum Operator: String {
    case plus = "+"
    case minus = "-"
    case divide = "/"
    case multiply = "x"
}
