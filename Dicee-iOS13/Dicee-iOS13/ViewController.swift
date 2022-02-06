//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
//    var leftDiceNumber = 1
//    var rightDiceNumber = 5
    let dices = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
    
   /*
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
//        diceImageView1.image = #imageLiteral(resourceName: "DiceSix")
//        // #imageLiteral()
//
//        // transparency
//        diceImageView1.alpha = 0.5
//
//        diceImageView2.image = #imageLiteral(resourceName: "DiceTwo")
    }
    */

    @IBAction func rollButtonPressed(_ sender: UIButton) {
//        print("Button got tapped.")
//        diceImageView1.image = #imageLiteral(resourceName: "DiceFour")
//        diceImageView2.image = #imageLiteral(resourceName: "DiceFour")
        
//        leftDiceNumber = Int.random(in: 1...6)      // range inclusive of borders

        diceImageView1.image = dices.randomElement()
        diceImageView2.image = dices[Int.random(in: 0...5)]

//        leftDiceNumber += 1

    }
}

