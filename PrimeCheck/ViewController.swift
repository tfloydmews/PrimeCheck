//
//  ViewController.swift
//  PrimeCheck
//
//  Created by Taylor on 2/1/17.
//  Copyright © 2017 Taylor. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberInput: UITextField!
    @IBOutlet weak var primeLabel: UILabel!
    
    @IBAction func checkPrime(_ sender: UIButton) {
        let number:Int? = Int(numberInput.text!)
        if number == nil {
            primeLabel.text = "Enter Number"
            return
        }
        
        if number! <= 1 {
                self.primeLabel.text = "Not Prime"
        }
        else {
            if number! <= 3 {
                self.primeLabel.text = "Prime"
            }
        }
        
            
        var i = 2
        while i*i <= number! {
            if number! % i == 0 {
                primeLabel.text = "Composite"
                break
            }
            else {
                if number! % i > 0 {
                    i+=1
                    self.primeLabel.text = "Prime"
                    }
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

