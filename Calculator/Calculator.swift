import Foundation

struct Calculator {
    var result: Double = 0
    var operand: Double
    var operation: String
    
    var calculate: Double {
        switch operation {
        case "+":
            return result + operand
        case "x":
            return result * operand
        case "/":
            return result / operand
        case "-":
            return result - operand
        default:
            return 0
        }
    }
}

enum Operator: String {
    case plus = "+"
    case minus = "-"
    case divide = "/"
    case multiply = "x"
}
