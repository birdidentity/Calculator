import Foundation

struct Calculator {
    var operands: [Double]
    var operation: String

    
    var result: Double {
        switch operation {
        case "+":
            return operands[0] + operands[1]
        case "x":
            return operands[0] * operands[1]
        case "/":
            return operands[0] / operands[1]
        case "-":
            return operands[0] - operands[1]
        default:
            return operands[0]
        }
    }
}
