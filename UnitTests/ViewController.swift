//
//  ViewController.swift
//  UnitTests
//
//  Created by user on 05/02/2019.
//  Copyright © 2019 Vinícius Cano Santos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let ferrari = Car(type: .Sport, transmissionMode: .Drive)
        ferrari.start(minutes: 120)
        print(ferrari.miles) // => 140
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}

