//
//  ViewController.swift
//  UtilityConverter
//
//  Created by Dinuka Piyadigama on 2022-03-02.
//

import UIKit

class ViewController: UIViewController {

    let ounceInKilos = 0.0283495
    
    @IBOutlet weak var keyboard: ReusableView!
    
    @IBOutlet var textFields: [UITextField]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        keyboard.deligate = self
        
        textFields.forEach{textField in
//            prevent default keyboard from opening
            textField.inputView = UIView()
            textField.inputAccessoryView = UIView()
        }
    }
}

//    an extension to the current functionality - used to separate extra code for protocols
extension ViewController: ReusableProtocol{
//    this will listen to all events that are called by the respective deligate that's using this specific protocol
    
    func didPressNumber(_ number: String) {
//        print("Pressed number in VC \(number)")
//        ounce.text = number
        let textField = textFields.filter { tf in
            return tf.isFirstResponder
        }.first
        
        if let tf = textField {
            tf.text! += "\(number)"
            
            changeWeight(textField: tf)
        }
    }
    
    func didPressDecimalNegative(_ value: String) {
//        print("Pressed value in VC \(value)")
        
//        only temperature can be negative
        if value == "-" {return}

        let textField = textFields.filter { tf in
            return tf.isFirstResponder
        }.first
        
        if let tf = textField {
            if (tf.text?.count ?? 0) > 0 {
                tf.text! += "\(value)"
            }
        }
    }
    
    func didPressDelete() {
//        print("Pressed Delete in VC")
        let textField = textFields.filter { tf in
            return tf.isFirstResponder
        }.first
        
        if let tf = textField {
            if (tf.text?.count ?? 0) > 0 {
                //  remove last character
                tf.text!.removeLast()
            }
        }
    }
    
    func changeWeight(textField: UITextField) {
        if textField.tag == 1 {
//            if the text field corresponding to ounces is being edited
            let text = textField.text ?? ""
            let conversion = (Double(text) ?? 0) * ounceInKilos
            
            let kilosTextField = textFields.filter { tf in
                return tf.tag == 2
            }.first
            
            kilosTextField?.text = "\(conversion)"
        } else if textField.tag == 2 {
//            if the text field corresponding to kilograms is being edited
//            let ouncesTextField = textFields.filter { tf in
//                return tf.tag == 1
//            }.first
        }
    }
}
