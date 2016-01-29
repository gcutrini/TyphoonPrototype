//
//  MenuPresenter.swift
//  TyphoonPrototype
//
//  Created by Gabriel Horacio Cutrini on 1/29/16.
//  Copyright © 2016 PlayMobile. All rights reserved.
//

import Foundation

@objc
public protocol IMenuPresenter {
    func pushFrontModule2()
}

class MenuPresenter: NSObject, IMenuPresenter {
    var wireframe: IMenuWireframe!
    
    func pushFrontModule2() {
        wireframe.pushFrontModule2()
    }
}