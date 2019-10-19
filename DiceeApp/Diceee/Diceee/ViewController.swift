//
//  ViewController.swift
//  Diceee
//
//  Created by mac on 10/6/19.
//  Copyright © 2019 Aijaz Ali. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let dices = ["dice1","dice2","dice3","dice3","dice4","dice5","dice6"]
    var randomVariable1: Int = 0
    var randomVariable2: Int = 0
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDiceImages()
        // Do any additional setup after loading the view.
    }

    @IBAction func rollDiceMethod(_ sender: Any) {
        updateDiceImages()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
    updateDiceImages()
    }
    
    func updateDiceImages() {
        randomVariable1 = Int.random(in: 1 ... 6)
        
        randomVariable2 = Int.random(in: 1 ... 6)
        
        //print("dice\(randomVariable1)")
        
        //diceImageView1.image = UIImage(named: "dice\(randomVariable1)")
        //diceImageView2.image = UIImage(named: "dice\(randomVariable2)")
        
        diceImageView1.image = UIImage(named:dices[randomVariable1])
        diceImageView2.image = UIImage(named: dices[randomVariable2])
        
    }
}

