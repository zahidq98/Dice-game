//
//  ViewController.swift
//  Dice Game
//
//  Created by Codenation4 on 07/12/2018.
//  Copyright © 2018 Codenation4. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDiceIndex1 : Int = 0 // hold value of random number
    var randomDiceIndex2 : Int = 0
    
    let diceArray = ["dice1","dice2","dice3","dice4","dice5","dice6"] // set a const for the dice

    @IBOutlet weak var diceImageView1: UIImageView! // drag and dropped the first dice image and it writes the code for you
    
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        randomDiceIndex1 = Int(arc4random_uniform(6)) // generates random number  
        randomDiceIndex2 = Int(arc4random_uniform(6))
        
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1]) //UIImage changes the face face of the dice image because the image is a UI
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
    }
    
    func updateDiceImages() {
        
    }
}

