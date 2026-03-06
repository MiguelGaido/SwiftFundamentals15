//
//  ViewController.swift
//  InterfaceBuilderBasics
//
//  Created by Miguel Gaido on 3/6/26.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var labelMsg: UILabel!
    @IBOutlet var myButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myButton.tintColor = .red
    }

    
    @IBAction func buttonPressed(_ sender: Any) {
        labelMsg.text = "Button pressed"
    }

}

