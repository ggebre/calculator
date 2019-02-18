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
    
    @IBAction func pointPressed(_ sender: UIButton) {
    }
    
    @IBAction func percentPressed(_ sender: UIButton) {
    }
    @IBAction func signPressed(_ sender: UIButton) {
    }
    @IBAction func clearPressed(_ sender: UIButton) {
    }
    @IBAction func operatorPressed(_ sender: UIButton) {
        sender.backgroundColor = UIColor.yellow
        mathSign = sender.title(for: .normal)!
        
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
    }
    var newCalculator : Calculator!
    //newCalculator = Calculator()
    
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
                        //print(storedArray)
                        storedArray[1] = input
                        //print(storedArray)
                    } else {
                        storedArray.append(input)
                        //print(storedArray)
                    }
                    
                } else {
                    outP = mathematicalOperation(num1: stringToInt(input: storedArray[0]), mathSign: storedArray[1], num2: stringToInt(input: storedArray[2]))
                    labelOutlet.text = outP
                    //print(storedArray)
                    storedArray = [outP, input]
                    //print(storedArray)
        }
       
    }
    
}

