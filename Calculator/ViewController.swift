import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textLabel: UILabel!
    
    @IBOutlet var digitButtons: [UIButton]!
    
    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var plusMinusButton: UIButton!
    @IBOutlet weak var percentButton: UIButton!
    
    @IBOutlet var mathButtons: [UIButton]!
    @IBOutlet weak var resultButton: UIButton!
    
    var operand: String = "0"
    var calculator: Calculator!
    
    var lastPressedButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    func updateUI() {
        textLabel.text = operand
    }
    
    @IBAction func digitButtonPressed(_ sender: UIButton) {
        
        guard let digit = sender.title(for: .normal) else {return}
        
        if operand == "0" {
            operand = digit
        } else if operand.count >= 9 {
            return
        } else {
            operand += digit
        }
        
        
        updateUI()
    }
    
    @IBAction func operatorButtonPressed(_ sender: UIButton) {
        
        guard let operand = Double(operand) else {return}
        guard let operation = sender.title(for: .normal) else {return}
                
        if calculator == nil {
            calculator = Calculator(operands: [operand], operation: "??")
            return
        }
        
        
        calculator.operands.append(operand)

    }
    
    @IBAction func resetButtonPressed() {
        calculator = nil
        operand = "0"
        updateUI()
    }
    
    
    
    @IBAction func countButtonPressed() {
        let result = calculator.result
        calculator.operands[0] = result
        textLabel.text = "\(result)"
    }
    
}

