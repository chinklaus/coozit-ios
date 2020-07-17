//
//  WelcomeViewController.swift
//  Somatt
//
//  Created by 秦士翔 on 2020/7/17.
//  Copyright © 2020 Somatt. All rights reserved.
//


import UIKit

class LoginViewController: UIViewController {
        
    @IBOutlet weak var logoLabel: UILabel!
    override func viewDidLoad() {
    super.viewDidLoad()
        logoLabel.text = ""
        var charIndex = 0.0
        let titleText = "Somatt"
        for letter in titleText {
            Timer.scheduledTimer(withTimeInterval: 0.5 * charIndex, repeats: false) { (timer) in
                self.logoLabel.text?.append(letter)
            }
            charIndex += 1;   
        }
    }
}
