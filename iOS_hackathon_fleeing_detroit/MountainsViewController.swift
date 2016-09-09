//
//  MountainsViewController.swift
//  iOS_hackathon_fleeing_detroit
//
//  Created by Tom Eastman on 9/9/16.
//  Copyright © 2016 Tom Eastman. All rights reserved.
//

import Foundation
import UIKit

class MountainsViewController: UIViewController{
    
    @IBOutlet weak var healthLabel: UILabel!
    @IBOutlet weak var consoleLabel: UILabel!

    @IBAction func actionButtonPressed(sender: UIButton) {
        if sender.tag == 1 {
            ammo -= 2
            time -= 5
            let hunted = Int(arc4random_uniform(UInt32(101))+1)
            if hunted < 50{
                food += hunted
                consoleLabel.text = "Nice Shot! You got \(hunted) food"
                health -= 10
            }else if hunted % 3 == 0{
                consoleLabel.text = "You have been eaten by a bear. Oops!"
                    health = 0
            }else{
                consoleLabel.text = "You Missed!"
                health -= 10
            }
            
        } else if sender.tag == 2 {
            health += 10
            time -= 5
        } else if sender.tag == 3 {
            health -= 20
            time -= 10
            performSegueWithIdentifier("toTreasureCove", sender: UIButton.self)
        } else if sender.tag == 4 {
            health -= 15
            time -= 15
            performSegueWithIdentifier("toTreasureCove", sender: UIButton.self)
        }
        updateUI()
    }
    
    func updateUI(){
        healthLabel.text = "Health: \(health)"
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("HEALTH \(health)")
        healthLabel.text = "Health:\(health)"
    }
}
