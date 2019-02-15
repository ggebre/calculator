//
//  ViewController.swift
//  CalculatorNew
//
//  Created by Getu Gebre on 2/15/19.
//  Copyright © 2019 Getu Gebre. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var labelOutlet: UILabel!
    @IBAction func pointPressed(_ sender: UIButton) {
    }
    
    @IBAction func percentPressed(_ sender: UIButton) {
    }
    @IBAction func signPressed(_ sender: UIButton) {
    }
    @IBAction func clearPressed(_ sender: UIButton) {
    }
    @IBAction func additionPressed(_ sender: UIButton) {
    }
    @IBAction func subtractionPressed(_ sender: UIButton) {
    }
    @IBAction func multiplyPressed(_ sender: UIButton) {
    }
    @IBAction func divisionPressed(_ sender: UIButton) {
    }
    @IBAction func numberPressed(_ sender: UIButton) {
        if let text = sender.titleLabel!.text{
            print(text)
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

