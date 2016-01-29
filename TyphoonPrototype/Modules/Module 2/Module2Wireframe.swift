//
//  Module2Wireframe.swift
//  TyphoonPrototype
//
//  Created by Gabriel Horacio Cutrini on 1/29/16.
//  Copyright © 2016 PlayMobile. All rights reserved.
//

import Foundation
import SWRevealViewController

@objc
protocol IModule2Wireframe {
    func pushFrontModule2()
}

class Module2Wireframe: NSObject, IModule2Wireframe {
    var navigationController: UINavigationController!
    var revealViewController: SWRevealViewController!
    var module2ViewController: Module2ViewController!
    
    func pushFrontModule2() {
        navigationController.setViewControllers([module2ViewController], animated: false)
        revealViewController.pushFrontViewController(navigationController, animated: true)
    }
}