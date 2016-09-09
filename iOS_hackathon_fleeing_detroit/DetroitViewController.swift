//
//  DetroitViewController.swift
//  iOS_hackathon_fleeing_detroit
//
//  Created by Tom Eastman on 9/9/16.
//  Copyright © 2016 Tom Eastman. All rights reserved.
//

import Foundation
import UIKit

class DetroitViewController: UIViewController {
    
    @IBOutlet weak var detroitLabel: UILabel!
    @IBOutlet weak var healthLabel: UILabel!
    @IBOutlet weak var goldLabel: UILabel!
    @IBOutlet weak var introStack: UIStackView!
    @IBOutlet weak var shopStack: UIStackView!
    
    @IBOutlet weak var shop: UIButton!
    
    
    @IBAction func buyButtonPressed(sender: UIButton) {
        if sender.tag == 1 {
            gold -= 10
            ammo += 6
            updateUI()
        } else if sender.tag == 2{
            gold -= 10
            food += 20
            updateUI()
        } else if sender.tag == 3{
            gold -= 5
            bait += 2
            updateUI()
        }
    }
    
    @IBAction func shopButtonPressed(sender: UIButton) {
        if sender.currentTitle == "Continue"{
            performSegueWithIdentifier("toHeartland", sender: UIButton.self)
            time -= 10
            health -= 25
            updateUI()
        }
        shop.setTitle("Continue", forState: .Normal)
        introStack.hidden = true
        shopStack.hidden = false
        
        
        
    }
    
    func updateUI(){
        healthLabel.text = "Health: \(health)"
        goldLabel.text = "Gold: \(gold)"
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        healthLabel.text = "Health: \(health)"
        goldLabel.text = "Gold: \(gold)"
        shopStack.hidden = true
    }
}