//
//  LandingViewController.swift
//  UtilityConverter
//
//  Created by Dinuka Piyadigama on 2022-03-02.
//

import UIKit

class LandingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
//    programmatically redirect to page
    @IBAction func didPressSegue(_ sender: UIButton) {
        performSegue(withIdentifier: "LandingSegue", sender: self)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
