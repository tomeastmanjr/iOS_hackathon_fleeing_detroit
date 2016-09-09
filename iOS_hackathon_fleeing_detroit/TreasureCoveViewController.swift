//
//  TreasureCoveViewController.swift
//  iOS_hackathon_fleeing_detroit
//
//  Created by Tom Eastman on 9/9/16.
//  Copyright © 2016 Tom Eastman. All rights reserved.
//

import Foundation
import UIKit

class TreasureCoveViewController: UIViewController{
    
    @IBOutlet weak var healthLabel: UILabel!
    @IBOutlet weak var consoleLabel: UILabel!
    
    var dead = false
    
    @IBAction func treasureButtonPressed(sender: UIButton) {
        let rand = Int(arc4random_uniform(UInt32(101))+1)
        if dead == false{
            if rand % 9 == 0 {
                gold += 1000
                consoleLabel.text = " You Gained 1000 gold"
            }
            else if rand < 50 {
                gold -= 1000
                health -= 20
                consoleLabel.text = " You were attacked by bandits"
            }
            else if rand > 50{
                gold = 0
                health -= 20
                food = 100
                bait = 15
                ammo = 15
                time -= 15
                consoleLabel.text = "You were attacked by David W. and Michael Ars..enic.. they robbed you of everything.."
            }
            updateUI()
        }
    }
    
    func updateUI(){
        healthLabel.text = "Health: \(health)"
        if health <= 0 {
            dead = true
            consoleLabel.text = "You are dead!! Restart the app!"
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("HEALTH \(health)")
        healthLabel.text = "Health:\(health)"
    }
}