//
//  ApplicationAssembly.swift
//  TyphoonPrototype
//
//  Created by Gabriel Horacio Cutrini on 1/29/16.
//  Copyright © 2016 PlayMobile. All rights reserved.
//

import Typhoon
import SWRevealViewController

class ApplicationAssembly: TyphoonAssembly {
    
    dynamic func mainStoryboard() -> AnyObject {
        return TyphoonDefinition.withClass(TyphoonStoryboard.self) {
            (definition) in
            
            definition.useInitializer("storyboardWithName:factory:bundle:") {
                (initializer) in
                
                initializer.injectParameterWith("Main")
                initializer.injectParameterWith(self)
                initializer.injectParameterWith(NSBundle.mainBundle())
            }
            
            definition.scope = TyphoonScope.Singleton
        }
    }
    
    dynamic func navigationController() -> AnyObject {
        return TyphoonDefinition.withFactory(self.mainStoryboard(), selector: "instantiateViewControllerWithIdentifier:", parameters: {
            (factoryMethod) in
            
            factoryMethod.injectParameterWith("NavigationController")
            }, configuration: {
                (definition) in
                
                definition.scope = TyphoonScope.Singleton
        })
    }
    
    dynamic func revealViewController() -> AnyObject {
        return TyphoonDefinition.withClass(SWRevealViewController.self) {
            (definition) in
            
            definition.scope = TyphoonScope.Singleton
        }
    }
}
