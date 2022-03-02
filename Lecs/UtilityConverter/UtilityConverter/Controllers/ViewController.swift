//
//  ViewController.swift
//  UtilityConverter
//
//  Created by Dinuka Piyadigama on 2022-03-02.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var keyboard: ReusableView!
    
    @IBOutlet var textFields: [UITextField]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        keyboard.deligate = self
        
        textFields.forEach{textField in
            textField.inputView = UIView()
            textField.inputAccessoryView = UIView()
        }
    }
}

//    an extension to the current functionality - used to separate extra code for protocols
extension ViewController: ReusableProtocol{
//    this will listen to all events that are called by the respective deligate that's using this specific protocol
    
    func didPressNumber(_ number: String) {
        print("Pressed number in VC \(number)")
//        ounce.text = number
    }
    
    func didPressDecimalNegative(_ value: String) {
        print("Pressed value in VC \(value)")
    }
    
    func didPressDelete() {
        print("Pressed Delete in VC")
    }
}
