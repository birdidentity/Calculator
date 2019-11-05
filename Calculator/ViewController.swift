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
        
        if operand.count >= 9 {
            return
        }
        
        if operand == "0" {
            operand = sender.title(for: .normal)!
        } else {
            operand += sender.title(for: .normal)!
        }
        
        updateUI()
    }
    
    @IBAction func operatorButtonPressed(_ sender: UIButton) {
        if lastPressedButton != nil,
            mathButtons.contains(lastPressedButton) {
            countButtonPressed()
        }
        
        self.lastPressedButton = sender
        calculator = Calculator(result: Double(operand)!, operand: 0, operation: sender.title(for: .normal)!)
        operand = "0"
    }
    
    @IBAction func countButtonPressed() {
        calculator.operand = Double(operand)!
        operand = String(calculator.calculate)
        updateUI()
    }
    
}

