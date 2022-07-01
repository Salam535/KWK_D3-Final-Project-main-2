//
//  ViewController.swift
//  KWK_D3 Final Project
//
//  Created by Nghi Nguyen on 6/28/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var greet: UILabel!
    
    @IBAction func submit(_ sender: UIButton) {
        if let newtitle = textField.text{
            greet.text = "Hi \(newtitle)!"
    }
    
    
}

}
