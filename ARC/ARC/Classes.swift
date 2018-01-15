//
//  Classes.swift
//  ARC
//
//  Created by Kimaya Desai on 1/15/18.
//  Copyright © 2018 Kimaya99. All rights reserved.
//

import Foundation

class Person {
    let name : String
    var instrument :Instrument?
    
    init(name :String, instrument : Instrument?){
        self.name = name
        self.instrument = instrument
    }
    
    deinit{
        print(" Person \(name) is being deinitialized")
    }
    
    
}

class Instrument {
    let name : String
    var owner : Person?
    
    init(name :String, owner : Person?){
        self.name = name
        self.owner = owner
    }
    
    deinit{
        print(" Instrument \(name) is being deinitialized")
    }
    
}
