//
//  ViewController.swift
//  CalculatorNew
//
//  Created by Getu Gebre on 2/15/19.
//  Copyright © 2019 Getu Gebre. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var outP = ""
    var number = 0
    
    var mathSign = ""
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
        mathSign = sender.title(for: .normal)!
    }
    @IBAction func subtractionPressed(_ sender: UIButton) {
        mathSign = sender.title(for: .normal)!
    }
    @IBAction func multiplyPressed(_ sender: UIButton) {
        mathSign = sender.title(for: .normal)!
    }
    @IBAction func divisionPressed(_ sender: UIButton) {
        mathSign = sender.title(for: .normal)!
    }
    @IBAction func numberPressed(_ sender: UIButton) {
        
        number = Int(sender.title(for: .normal)!)!
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func mathematicalOperation (num1: Int , mathSign: String, num2: Int) -> String {
        var output = ""
        switch mathSign {
        case  "+" :
            output = "\(num1 + num2)"
        case  "-" :
            output = "\(num1 - num2)"
        case  "x" :
            output = "\(num1 * num2)"
        default:
            output = "\(Double(num1) / Double(num2))"
        }
        return output
    }
}

