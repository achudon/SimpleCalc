//
//  main.swift
//  SimpleCalc
//
//  Created by Alyssa on 4/5/16.
//  Copyright © 2016 Alyssa. All rights reserved.
//

import Foundation

var count = 0

var sum = 0

var lastNumber: UInt?

var anotherCalc = true

var doOperation = false

var operand = ""

func resetVariables() {
    lastNumber = 0;
    count = 0;
    sum = 0;
}

print("Enter an expression separated by returns:")

while anotherCalc {
    var input = readLine(stripNewline: true)!
    
    if (input == "exit") {
        print("exiting")
        exit(0)
    }

    var num = UInt.init(input)

    if (num != nil) {
        count += 1
        sum += Int(num!)
        
        if (lastNumber == nil) {
            lastNumber = num!
        }
        
        if (doOperation) {
            switch operand {
            case "+" :
                var result = lastNumber! + num!
                print("\(result)")
            case "-":
                var result = Int(lastNumber!) - Int(num!)
                print("\(result)")
            case "%":
                var result = lastNumber! % num!
                print("\(result)")
            case "/":
                var result = Double(lastNumber!) / Double(num!)
                print("\(result)")
            case "*":
                var result = lastNumber! * num!
                print("\(result)")
            default :
                print("Please enter a positive whole number or an operator.")
            }
            doOperation = false
            resetVariables()
        } else {
            lastNumber = num!
        }
        
    } else if input == "+" || input == "-" || input == "%" || input == "/" || input == "*" {
        operand = input
        doOperation = true
    } else if input == "count" {
        print("The count of the numbers entered is: \(count)")
        resetVariables()
    } else if input == "avg" {
        if (count == 0) {
            print("Please enter numbers to compute an average.")
        } else {
            var result = Double(sum / count)
            print("The average of these numbers is: \(result)")
        }
        resetVariables()
    } else if input == "fact" {
        var result = 0
        if (lastNumber! == 0) {
            result = 1
        } else {
            result = 1
            for var i = Int(lastNumber!); i > 1; i-- {
                result *= i
            }
        }
        
        print("The factorial of \(lastNumber!) is: \(result)")
        resetVariables()
    } else {
        print("Please enter a positive whole number or an operator.")
        resetVariables()
    }

}






