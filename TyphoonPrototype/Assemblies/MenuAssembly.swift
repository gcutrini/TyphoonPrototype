//
//  MenuAssembly.swift
//  TyphoonPrototype
//
//  Created by Gabriel Horacio Cutrini on 1/29/16.
//  Copyright © 2016 PlayMobile. All rights reserved.
//

import Typhoon

class MenuAssembly: TyphoonAssembly {
    var module2Assembly: Module2Assembly!
    
    dynamic func menuWireframe() -> AnyObject {
        return TyphoonDefinition.withClass(MenuWireframe.self) {
            (definition) in
            
            definition.injectProperty("module2Wireframe", with: self.module2Assembly.module2Wireframe())
        }
    }
    
    dynamic func menuPresenter() -> AnyObject {
        return TyphoonDefinition.withClass(MenuPresenter.self) {
            (definition) in
            
            definition.injectProperty("wireframe", with: self.menuWireframe())
        }
    }
    
    dynamic func menuViewController() -> AnyObject {
        return TyphoonDefinition.withClass(MenuViewController.self) {
            (definition) in
            
            definition.injectProperty("presenter", with: self.menuPresenter())
        }
    }
}
