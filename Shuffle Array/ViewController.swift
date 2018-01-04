//
//  ViewController.swift
//  Shuffle Array
//
//  Created by Dan Korkelia on 04/01/2018.
//  Copyright © 2018 Ramdan Korkelia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    
    let myShuffledArray = myTestFunction()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        myLabel.text = "\(myTestArrayOfNumbers)" //prints to simulator
        
        print(myTestArrayOfNumbers) //prints to console
    }

}
