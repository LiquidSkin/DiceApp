//
//  ViewController.swift
//  DiceApp
//
//  Created by VigneshRaghav on 1/1/19.
//  Copyright © 2019 VigneshRaghav. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4" , "dice5", "dice6"]
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
    

    @IBOutlet weak var DiceViewImage1: UIImageView!
    @IBOutlet weak var DiceViewImage2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDiceImages()
        
   
    }

    @IBAction func DiceViewButton1(_ sender: Any) {
        
        updateDiceImages()
        
        
}
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        
        
        updateDiceImages()
    }
    func updateDiceImages()
    {
        randomDiceIndex1 = Int.random(in : 0 ... 5)
        randomDiceIndex2 = Int.random(in : 0 ... 5)
        
        DiceViewImage2.image = UIImage(named: diceArray[randomDiceIndex1])
        
        DiceViewImage1.image = UIImage(named: diceArray[randomDiceIndex2])
    }
    
}

