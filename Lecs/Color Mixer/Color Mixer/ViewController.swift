//
//  ViewController.swift
//  Color Mixer
//
//  Created by Dinuka Piyadigama on 2022-02-09.
//

import UIKit

class ViewController: UIViewController {

    var redVal:Float  = 0
    var greenVal:Float = 0
    var blueVal:Float = 0
    
    @IBOutlet weak var colorMixerView: UIView!

    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!

    @IBOutlet weak var valuesLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        redVal = redSlider.value
        greenVal = greenSlider.value
        blueVal = blueSlider.value
    }

    @IBAction func ButtonClick(_ sender: UIButton) {
        
        if sender.titleLabel?.text ==  "Click Me!"{
            sender.setTitle("You clicked!", for: .normal)
//            .normal is the default state of the button
        } else{
            sender.setTitle("Click Me!", for: .normal)
        }
    }
    
    //    @IBAction func RedPicker(_ sender: UISlider) {
//        redVal = Int(round(sender.value))
////        print("red value: \(redVal)")
//        UpdateColorView()
//    }
//
//    @IBAction func GreenPicker(_ sender: UISlider) {
//        greenVal = Int(round(sender.value))
////        print("red value: \(greenVal)")
//        UpdateColorView()
//    }
//
//    @IBAction func BluePicker(_ sender: UISlider) {
//        blueVal = Int(round(sender.value))
////        print("red value: \(blueVal)")
//        UpdateColorView()
//    }
    
    
    @IBAction func didChangeSlider(_ sender: UISlider) {
        let tag = sender.tag
        
        switch tag {
        case 1:
            redVal = sender.value
            UpdateColorView()
        case 2:
            greenVal = sender.value
            UpdateColorView()
        case 3:
            blueVal = sender.value
            UpdateColorView()
        default: break
//            do nothing
        }
        
        valuesLabel.text = "\(Int(redVal)), \(Int(greenVal)), \(Int(blueVal))"
    }
    
    func UpdateColorView() {
        let newUIColor = UIColor(
            red: CGFloat(redVal) / 255.0,
            green: CGFloat(greenVal) / 255.0,
            blue: CGFloat(blueVal) / 255.0,
            alpha: CGFloat(1.0)
        )
//        CGFloat can only have values between 0 and 255
        
        colorMixerView.backgroundColor = newUIColor
//        view.backgroundColor = UIColorFromRGB()
    }
    
//https://stackoverflow.com/questions/24074257/how-can-i-use-uicolorfromrgb-in-swift
//    func UIColorFromRGB() -> UIColor {
//        return UIColor(
//            red: CGFloat(redVal) / 255.0,
//            green: CGFloat(greenVal) / 255.0,
//            blue: CGFloat(blueVal) / 255.0,
//            alpha: CGFloat(1.0)
//        )
//    }
}


