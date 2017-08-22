//
//  ViewController.swift
//  Dicee
//
//  Created by pradnyanand milind pohare on 16/08/17.
//  Copyright © 2017 pradnyanand milind pohare. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0
    //let means constant variable 
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6",]
    
    
    
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        updateDiceImage()
    }
  

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func rollButton(_ sender: UIButton) {
        
        
        updateDiceImage()
        
        
    }
    
    
    func updateDiceImage(){
        
        randomDiceIndex1 =  Int(arc4random_uniform(6))
        randomDiceIndex2 =   Int(arc4random_uniform(6))
        
        
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
        
    }
    
    //this function is to use motion of the iphone to change dice
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        
        
         updateDiceImage()
    
    }
    
   
}

