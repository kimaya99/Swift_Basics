//
//  ViewController.swift
//  ARC
//
//  Created by Kimaya Desai on 1/15/18.
//  Copyright © 2018 Kimaya99. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var Kimaya: Person?
    var Guitar: Instrument?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        Kimaya = Person(name: "kimaya", instrument: nil)
        Guitar = Instrument(name: "guitar", owner: nil)
        
        Kimaya = nil
        
        Kimaya?.instrument = Guitar
        
        Kimaya = nil
        
       
        
        
        
    }

}

