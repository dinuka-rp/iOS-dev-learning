//
//  ViewController.swift
//  Color Mixer
//
//  Created by Dinuka Piyadigama on 2022-02-09.
//

import UIKit

class ViewController: UIViewController {

    var redVal  = 0
    var greenVal = 0
    var blueVal = 0
    
    @IBOutlet weak var colorMixerView: UIView!


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func ButtonClick(_ sender: UIButton) {
        
        if sender.titleLabel?.text ==  "Click Me!"{
            sender.setTitle("You clicked!", for: .normal)
//            .normal is the default state of the button
        } else{
            sender.setTitle("Click Me!", for: .normal)
        }
    }
    
    @IBAction func RedPicker(_ sender: UISlider) {
        redVal = Int(round(sender.value))
//        print("red value: \(redVal)")
        UpdateColorView()
    }
    
    @IBAction func GreenPicker(_ sender: UISlider) {
        greenVal = Int(round(sender.value))
//        print("red value: \(greenVal)")
        UpdateColorView()
    }
    
    @IBAction func BluePicker(_ sender: UISlider) {
        blueVal = Int(round(sender.value))
//        print("red value: \(blueVal)")
        UpdateColorView()
    }
    
    func UpdateColorView() {
        let newUIColor = UIColor(
            red: CGFloat(redVal) / 255.0,
            green: CGFloat(greenVal) / 255.0,
            blue: CGFloat(blueVal) / 255.0,
            alpha: CGFloat(1.0)
        )
//        division by 255.0 isn't necessary since the slider scale is only upto 255
        
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


