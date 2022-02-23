//
//  ViewController.swift
//  TriangleAreaCalculator
//
//  Created by Dinuka Piyadigama on 2022-02-23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var baseTextField: UITextField!
    @IBOutlet weak var heightTextField: UITextField!
    @IBOutlet weak var outputLabel: UILabel!

    var baseValue: String = ""
    var heightValue: String = ""

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
//        stop default keyboard from opening
        baseTextField.inputView = UIView()
        baseTextField.inputAccessoryView = UIView()
        heightTextField.inputView = UIView()
        heightTextField.inputAccessoryView = UIView()
    }

    @IBAction func didPressNumber(_ sender: UIButton) {
        // If statements
//        let btnTitle = sender.titleLabel?.text
//
//        if btnTitle != nil{
//            // code
//        }
        
        // If let
        if let unwrappedText = sender.titleLabel?.text {
            print(unwrappedText)
            
            if baseTextField.isFirstResponder{
                baseValue += unwrappedText
                baseTextField.text = baseValue
            } else if heightTextField.isFirstResponder{
                heightValue += unwrappedText
                heightTextField.text = heightValue
            }
        }
        
//        let textFields = [baseTextField, heightTextField]
        
        // we're trying to check which text field was the first responder
        
//        for x in textFields{
////            if firstResponder is true
//        }
//
////        press enter again after autocomplete upon filter
//        textFields.filter { textfield in
//            return textfield?.isFirstResponder as! Bool
//        }
        
    }
    
    @IBAction func didPressDelete(_ sender: UIButton) {
        if baseTextField.isFirstResponder{
            if baseValue.count > 0 {
                _ = baseValue.removeLast()
                baseTextField.text = baseValue
            }
        } else if heightTextField.isFirstResponder{
            if heightValue.count > 0 {
                _ = heightValue.removeLast()
                heightTextField.text = heightValue
            }
        }
    }
    
    @IBAction func didPressDecimal(_ sender: UIButton) {
        if baseTextField.isFirstResponder{
            if baseValue.contains("."){
                return
            }
            baseValue += "."
            baseTextField.text = baseValue
        } else if heightTextField.isFirstResponder{
            if heightValue.contains("."){
                return
            }
            heightValue += "."
            heightTextField.text = heightValue
        }
        
    }
    
  
    
    @IBAction func calculateArea(_ sender: UIButton) {
//        0.5 * base * height
//        set to 0, if nil
        let base = Double(baseValue) ?? 0
        let height = Double(heightValue) ?? 0
        
        let area = 0.5 * base * height
        
        outputLabel.text = "\(area)"
    }
}

