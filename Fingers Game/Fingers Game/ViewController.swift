//
//  ViewController.swift
//  Fingers Game
//
//  Created by tonu on 9/4/17.
//  Copyright © 2017 tonu.app. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var guessField: UITextField!
    
    @IBOutlet var guessResult: UILabel!
    
    
    
    @IBAction func guessButton(_ sender: UIButton) {
        
        let diceRoll = String(arc4random_uniform(6))
        
        if diceRoll == guessField.text
        {
            guessResult.text = "You're absolutly right!!!"
            guessResult.textColor = UIColor.green
        }
        else
        {
            guessResult.text = "Sorry!! You're wrong! The number is " + diceRoll
            guessResult.textColor=UIColor.red
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

