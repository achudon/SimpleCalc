//
//  main.swift
//  SimpleCalc
//
//  Created by iGuest on 4/5/16.
//  Copyright © 2016 iGuest. All rights reserved.
//

import Foundation

var count = 0

var sum = 0

var num1: UInt

var num2: UInt

var anotherCalc = true

var doOperation = false

var operand: String

print("Enter an expression separated by returns:")

while anotherCalc {
    print("going into loop")
    var input = readLine(stripNewline: true)!
    
    print("here is the input I received \(input)")
    
    if (input == "exit") {
        print("exiting after this calculation")
        anotherCalc = false
    }

    var num = UInt.init(input)
    
    print("here is the value of num \(num)")

    if (num != nil) {
        num = num!
        count = count++
        sum += Int(num!)
        
        if (doOperation) {
            
        }
        
    } else if input == "+" || input == "-" || input == "%" || input == "/" || input == "*" {
        operand = input
        print("here is the operand that was saved \(operand)")
    } else if input == "count" {
        print(count)
    } else if input == "avg" {
        print(count / sum)
    } else if input == "fact" {
        
    } else {
        print("Please enter a positive number whole number or an operator.")
    }

}




