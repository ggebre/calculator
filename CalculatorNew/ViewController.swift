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
    var number = ""
    var firstNumber = ""
    var secondNumber = ""
    var mathSign = ""
    var storedArray = [String]()
    var outputText = ""
   let operators = ["+" , "-", "x", "÷"]
    @IBOutlet weak var labelOutlet: UILabel!
    @IBOutlet var operatorOutlet: [UIButton]!
    
   
    
    @IBAction func percentPressed(_ sender: UIButton) {
    }
    @IBAction func signPressed(_ sender: UIButton) {
        
//        number = "-" + number
//        if !storedArray.isEmpty{
//            storedArray[0] = "-\(storedArray[0])"
//            labelOutlet.text = storedArray[0]
//        }
        
    }
    @IBAction func clearPressed(_ sender: UIButton) {
        
        labelOutlet.text = "0"
    }
    @IBAction func operatorPressed(_ sender: UIButton) {
        sender.backgroundColor = UIColor.yellow
        mathSign = sender.title(for: .normal)!
        calculation()
        
    }
    
    
    @IBAction func numberPressed(_ sender: UIButton) {
        
        for button in operatorOutlet {
            button.backgroundColor = UIColor.red
        }
        number += sender.title(for: .normal)!
        
        labelOutlet.text = number
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        labelOutlet.text = "0"
    }
    
    func calculation (){
        if !number.isEmpty {
            if storedArray.count <= 2 {
                pushNumber(input: number)
            } else {
                pushNumber(input: mathSign)
            }
        }
        pushNumber(input: mathSign)
        number = ""
    }
    
    func stringToInt (input: String) -> Double {
        return Double(input)!
    }
    func mathematicalOperation (num1: Double , mathSign: String, num2: Double) -> String {
        var output = ""
        switch mathSign {
        case  "+" :
            output = "\(num1 + num2)"
        case  "-" :
            output = "\(num1 - num2)"
        case  "x" :
            output = "\(num1 * num2)"
        default:
            output = "\(num1 / num2)"
        }
        return output
    }
    func pushNumber (input: String){
        
                if storedArray.count < 3 {
                    if storedArray.count == 2 && operators.contains(input){
                        
                        storedArray[1] = input
                        
                    } else {
                        storedArray.append(input)
                    }
                    
                } else {
                    outP = mathematicalOperation(num1: stringToInt(input: storedArray[0]), mathSign: storedArray[1], num2: stringToInt(input: storedArray[2]))
                    labelOutlet.text = outP
                    storedArray = [outP, input]
                    
        }
       
    }
    
    
}

