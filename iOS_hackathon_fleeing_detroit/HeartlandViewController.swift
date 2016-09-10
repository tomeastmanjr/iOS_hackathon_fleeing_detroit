//
//  HeartlandViewController.swift
//  iOS_hackathon_fleeing_detroit
//
//  Created by Tom Eastman on 9/9/16.
//  Copyright © 2016 Tom Eastman. All rights reserved.
//

import Foundation
import UIKit

class HeartlandViewController: UIViewController{
    
    @IBOutlet weak var healthLabel: UILabel!
    var dead = false
    
    @IBOutlet weak var consoleLabel: UILabel!
    @IBAction func actionButtonPressed(sender: UIButton) {
        if dead == false{
            if sender.tag == 1 {
                bait -= 1
                time -= 1
            } else if sender.tag == 2 {
                health += 10
                time -= 5
            } else if sender.tag == 3 {
                health -= 20
                time -= 10
                performSegueWithIdentifier("toMountains", sender: UIButton.self)
            } else if sender.tag == 4 {
                health -= 15
                time -= 15
                performSegueWithIdentifier("toMountains", sender: UIButton.self)
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
        dead = false
    }
}