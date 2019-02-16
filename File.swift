//
//  File.swift
//  CalculatorNew
//
//  Created by Getu Gebre on 2/16/19.
//  Copyright © 2019 Getu Gebre. All rights reserved.
//

import Foundation

struct Calculator {
    var firstNumber : String = ""
    var secondNumber : String = ""
    var mathSign : String = ""
    
    mutating func storeNumber (input: String){
        if firstNumber.isEmpty{
            firstNumber = input
        } else if !firstNumber.isEmpty && mathSign.isEmpty{
            mathSign = input
        } else {
            secondNumber = input
        }
    }
}
