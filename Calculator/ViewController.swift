import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textLabel: UILabel!
    
    @IBOutlet var digitButtons: [UIButton]!
    
    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var plusMinusButton: UIButton!
    @IBOutlet weak var percentButton: UIButton!
    
    @IBOutlet var mathButtons: [UIButton]!
    @IBOutlet weak var resultButton: UIButton!
    
    var operand: Double = 0
    var calculator: Calculator!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    func updateUI() {
        textLabel.text = "0"
    }

    @IBAction func digitButtonPressed(_ sender: UIButton) {
        if operand == 0 {
            textLabel.text = "0"
        }
        
        if textLabel.text!.count >= 9 {
            return
        }
        if textLabel.text == "0" {
            textLabel.text = sender.title(for: .normal)
            guard let text = textLabel.text else {return}
            operand = Double(text)!
        } else {
            textLabel.text! += sender.title(for: .normal)!
            operand = Double(textLabel.text!)!
        }
    }
    
    @IBAction func operatorButtonPressed(_ sender: UIButton) {
        calculator = Calculator(operand: operand, operation: sender.title(for: .normal)!)
        operand = 0
    }
    
    
}

