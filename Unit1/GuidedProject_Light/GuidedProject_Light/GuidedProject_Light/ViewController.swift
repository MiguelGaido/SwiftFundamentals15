//
//  ViewController.swift
//  GuidedProject_Light
//
//  Created by Miguel Gaido on 3/6/26.
//

import UIKit

class ViewController: UIViewController {
    
    
    var lightOn: Bool = true

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    fileprivate func updateUI() {
        view.backgroundColor = lightOn ? .white : .black
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        lightOn.toggle()
        updateUI()
    }
    
}

