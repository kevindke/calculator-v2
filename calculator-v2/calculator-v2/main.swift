//
//  main.swift
//  calculator-v2
//
//  Created by Kevin Ke on 4/8/16.
//  Copyright © 2016 Kevin Ke. All rights reserved.
//

import Foundation

// Build a calculator

// adds two numbers together
func add(firstNum: Int, secondNum: Int) -> Int {
    return firstNum + secondNum
}

// subtracts two numbers from each other
func subtract(firstNum: Int, secondNum: Int) -> Int {
    return firstNum - secondNum
}

// multiplies two numbers together
func multiply(firstNum: Int, secondNum: Int) -> Int {
    return firstNum * secondNum
}

// divides two numbers from eachother
func divide(firstNum: Int, secondNum: Int) -> Int {
    return firstNum / secondNum
}

// performs the given functionality of the math operation
func mathOperation(op: (Int, Int) -> Int, firstNum: Int, secondNum: Int) -> Int {
    return op(firstNum, secondNum)
}

// tests for the simple calculator functions
print(add(2, secondNum: 2))
print(subtract(2, secondNum: 1))
print(multiply(5, secondNum: 5))
print(divide(30, secondNum: 3))
print(mathOperation(add, firstNum: 5, secondNum: 5))


// Array fun

// adds all elements in an array together
func addArray(numbers: [Int]) -> Int {
    var total = 0
    for index in 0 ..< numbers.count {
        total += numbers[index]
    }
    return total
}

// multiplies all elements in an array together
func multArray(numbers: [Int]) -> Int {
    var total = 1
    for index in 0 ..< numbers.count {
        total *= numbers[index]
    }
    return total
}

// averages the elements in the array
func avgArray(numbers: [Int]) -> Int {
    var total = 0
    for index in 0 ..< numbers.count {
        total += numbers[index]
    }
    return total / numbers.count
}

// counts the amount of numbers in the array
func countArray(numbers: [Int]) -> Int {
    return numbers.count
}

// performs the given functionality of the special array math operation
func arrayOperation(op: ([Int]) -> Int, numbers: [Int]) -> Int {
    return op(numbers)
}

// tests for the array calculator functions
print(addArray([1,2,3,4,5]))
print(multArray([1,2,3,4,5]))
print(avgArray([1,2,3,4,5]))
print(arrayOperation(multArray, numbers: [1,2,3,4,5]))


// Points

// adds tuples together
func addTuples(firstTup: (Int, Int), secondTup: (Int, Int)) -> (Int, Int) {
    return (firstTup.0 + secondTup.0, firstTup.1 + secondTup.1)
}

// subtracts tuples from each other
func subtractTuples(firstTup: (Int, Int), secondTup: (Int, Int)) -> (Int, Int) {
    return (firstTup.0 - secondTup.0, firstTup.1 - secondTup.1)
}

// adds dictionaries together
func addDictionaries(firstDict: Dictionary<String, Double>, secondDict: Dictionary<String, Double>) -> Dictionary<String, Double> {
    let totalX = firstDict["x"]! + secondDict["x"]!
    let totalY = firstDict["y"]! + secondDict["y"]!
    return ["x": totalX, "y": totalY]
}

// subtracts dictionaries from each other
func subtractDictionaries(firstDict: Dictionary<String, Double>, secondDict: Dictionary<String, Double>) -> Dictionary<String, Double>{
    let totalX = firstDict["x"]! - secondDict["x"]!
    let totalY = firstDict["y"]! - secondDict["y"]!
    return ["x": totalX, "y": totalY]
}

// tests for the point calculator functions
print(addTuples((1,1), secondTup: (5,4)))
print(subtractTuples((1,5), secondTup: (2,3)))
print(addDictionaries(["x": 1, "y": 2], secondDict: ["x": 3, "y": 4]))
print(subtractDictionaries(["x": 1, "y": 2], secondDict: ["x": 3, "y": 4]))


