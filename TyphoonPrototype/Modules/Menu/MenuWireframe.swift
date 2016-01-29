//
//  MenuWireframe.swift
//  TyphoonPrototype
//
//  Created by Gabriel Horacio Cutrini on 1/29/16.
//  Copyright © 2016 PlayMobile. All rights reserved.
//

import Foundation

@objc
protocol IMenuWireframe {
    func pushFrontModule2()
}

class MenuWireframe: NSObject, IMenuWireframe {
    var module2Wireframe: Module2Wireframe!
    
    func pushFrontModule2() {
        module2Wireframe.pushFrontModule2()
    }
}