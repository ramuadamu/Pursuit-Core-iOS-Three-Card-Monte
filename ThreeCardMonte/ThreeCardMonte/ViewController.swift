//
//  ViewController.swift
//  Three Card Monte Project
//
//  Created by Ramu on 11/7/18.
//

import UIKit

class ViewController: UIViewController {
    
    // outlet
    @IBOutlet weak var label: UILabel!
    
    
// cardbutton outlet
    @IBOutlet weak var cardButton1: UIButton!
    
    @IBOutlet weak var cardButton2: UIButton!
    
    @IBOutlet weak var cardButton3: UIButton!
    
    @IBOutlet weak var backgroundViewColor: UIView!
    @IBOutlet weak var displayLabel: UILabel!
    

    
    @IBAction func cardFlipped(_ sender: UIButton) {
        var cardArray = [UIImage.init(named: "kingCard"), UIImage.init(named: "threeCard"), UIImage.init(named: "threeCard")]
        cardArray = cardArray.shuffled()
        
        switch sender.tag {
        case 0:
            if cardArray[0] == UIImage.init(named:"kingCard") {
                cardButton1.setImage(UIImage.init(named:"kingCard"), for: .normal)
                displayLabel.text = "You won"

            } else {
                cardButton1.setImage(UIImage.init(named:"threeCard"), for: .normal)
                
                displayLabel.text = "You lost"

            }
            cardButton1.isEnabled = false
            cardButton2.isEnabled = false
            cardButton3.isEnabled = false
        case 1:
            if cardArray[1] == UIImage.init(named:"kingCard") {
                cardButton2.setImage(UIImage.init(named:"kingCard"), for: .normal)
                displayLabel.text = "You won 🏆"
            } else {
                cardButton2.setImage(UIImage.init(named:"threeCard"), for: .normal)
                displayLabel.text = "You lost ☠️"
            }
            cardButton1.isEnabled = false
            cardButton2.isEnabled = false
            cardButton3.isEnabled = false
        case 2:
            if cardArray[2] == UIImage.init(named:"kingCard") {
                cardButton3.setImage(UIImage.init(named:"kingCard"), for: .normal )
                displayLabel.text = "You won 🏆"
            } else {
                cardButton3.setImage(UIImage.init(named:"threeCard"), for: .normal)
                displayLabel.text = "You lost ☠️"
            }
            cardButton1.isEnabled = false
            cardButton2.isEnabled = false
            cardButton3.isEnabled = false
        default:
            print("invalid Entry")
    
    
    }
        cardButton1.isEnabled = false
        cardButton2.isEnabled = false
        cardButton3.isEnabled = false
        
    
}
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func startGame(_ sender: Any) {
        cardButton1.isEnabled = true
        cardButton2.isEnabled = true
        cardButton3.isEnabled = true
        
        cardButton1.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
        cardButton2.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
        cardButton3.setImage(UIImage.init(named: "cardBackRed"), for: .normal)
    }



}
