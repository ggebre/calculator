//
//  File.swift
//  CalculatorNew
//
//  Created by Getu Gebre on 2/16/19.
//  Copyright © 2019 Getu Gebre. All rights reserved.
//

import Foundation

struct Calculator {
    var firstNumber : String
    var secondNumber : String
    var mathSign : String
    var ouputText : String
    var storedArray: [String]
    
    mutating func storeNumber (input: String){
        if firstNumber.isEmpty{
            self.firstNumber.append(input)
            self.ouputText = self.firstNumber
        } else if !firstNumber.isEmpty && mathSign.isEmpty{
            self.mathSign.append(input)
        } else {
            self.secondNumber.append(input)
            self.ouputText = self.secondNumber
        }
    }
     mutating func pushNumber (input: String){
        self.storedArray.append(input)
//        if storedArray.count < 3 {
//            storedArray.append(input)
//        }
    }
}
