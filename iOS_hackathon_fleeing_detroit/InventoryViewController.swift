//
//  InventoryViewController.swift
//  iOS_hackathon_fleeing_detroit
//
//  Created by Tom Eastman on 9/9/16.
//  Copyright © 2016 Tom Eastman. All rights reserved.
//

import Foundation
import UIKit

class InventoryViewController: UIViewController{
    
    @IBOutlet weak var inventoryLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        inventoryLabel.text = "Ammo: \(ammo)\n Bait:\(bait)\n Food:\(food)\n Health:\(health)\n"
    }
}
