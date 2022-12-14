//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Aditya Pranav Bhuvanapalli
//

import UIKit

class ViewController: UIViewController {

    // MARK: IB Outlets for dice image views
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    // MARK: Dice options
    let diceOptions = [ #imageLiteral(resourceName: "DiceOne"),  #imageLiteral(resourceName: "DiceTwo"),  #imageLiteral(resourceName: "DiceThree"),  #imageLiteral(resourceName: "DiceFour"),  #imageLiteral(resourceName: "DiceFive"),  #imageLiteral(resourceName: "DiceSix") ]
    
    // MARK: Lifecycles
    override func viewDidLoad() {
        print("DEBUG: Main loaded")
        super.viewDidLoad()
        generateRandomDices()
    }
    
    // MARK: IB Actions
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        print("DEBUG: ROLL Button pressed")
        generateRandomDices()
    }
    
    // MARK: Function to randomize
    private func generateRandomDices() {
        diceImageView1.image = diceOptions.randomElement()
        diceImageView2.image = diceOptions.randomElement()
    }


}

