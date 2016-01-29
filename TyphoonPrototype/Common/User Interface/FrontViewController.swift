//
//  FrontViewController.swift
//  TyphoonPrototype
//
//  Created by Gabriel Horacio Cutrini on 1/29/16.
//  Copyright © 2016 PlayMobile. All rights reserved.
//

import UIKit
import SWRevealViewController

class FrontViewController: UIViewController, SWRevealViewControllerDelegate {
    @IBOutlet weak var menuButton: UIBarButtonItem!
    @IBOutlet weak var memoryAddressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if (menuButton != nil) {
            menuButton.target = revealViewController()
            menuButton.action = Selector("revealToggle:")
        }
    }
    
    override func viewDidAppear(animated: Bool) {
        memoryAddressLabel.text = "Module's memory address: \(unsafeAddressOf(self))"
    }
}