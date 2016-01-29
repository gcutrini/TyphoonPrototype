//
//  Module2Assembly.swift
//  TyphoonPrototype
//
//  Created by Gabriel Horacio Cutrini on 1/29/16.
//  Copyright © 2016 PlayMobile. All rights reserved.
//

import Typhoon

class Module2Assembly: TyphoonAssembly {
    var applicationAssembly: ApplicationAssembly!
    
    dynamic func module2Wireframe() -> AnyObject {
        return TyphoonDefinition.withClass(Module2Wireframe.self) {
            (definition) in
            
            definition.injectProperty("navigationController", with: self.applicationAssembly.navigationController())
            definition.injectProperty("revealViewController", with: self.applicationAssembly.revealViewController())
            definition.injectProperty("module2ViewController", with: self.module2ViewController())
        }
    }
    
    dynamic func module2ViewController() -> AnyObject {
        return TyphoonDefinition.withFactory(self.applicationAssembly.mainStoryboard(), selector: "instantiateViewControllerWithIdentifier:", parameters: {
            (factoryMethod) in
            
            factoryMethod.injectParameterWith("Module2ViewController")
            }, configuration: {
                (definition) in
                
                definition.scope = TyphoonScope.Prototype
        })
    }
}
