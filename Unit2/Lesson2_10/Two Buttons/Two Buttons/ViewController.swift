//
//  ViewController.swift
//  Two Buttons
//
//  Created by Miguel Gaido on 3/8/26.
//

import UIKit

class ViewController: UIViewController {

    
   
    @IBAction func clearTextButtonTapped(_ sender: Any) {
        label.text = ""
        textField.text = ""
    }
  
    
    @IBOutlet var textField: UITextField!
    @IBOutlet var label: UILabel!
    
    @IBAction func setTextButtonTapped(_ sender: Any) {
        label.text = textField.text
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

