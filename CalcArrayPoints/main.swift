//
//  main.swift
//  CalcArrayPoints
//
//  Created by Andrew Kan on 10/9/16.
//  Copyright © 2016 Andrew Kan. All rights reserved.
//

import Foundation

func add(left: Int, right: Int) -> Int {
    return(left + right)
}


func subtract(left: Int, right: Int) -> Int {
    return(left - right)

}

func multiply(left: Int, right: Int) -> Int {
    return(left * right)

}

func divide(left: Int, right: Int) -> Int {
    return(left / right)

}


func add(intArray: [Int]) -> Int {
    var sum: Int = 0
    for number in intArray {
        sum += number
    }
    return sum
}

func multiply(intArray: [Int]) -> Int {
    var product: Int = 1
    for number in intArray {
        product *= number
    }
    return product
}

func count(intArray: [Int]) -> Int {
    return intArray.count
}

func avg(intArray: [Int]) -> Int {
    var sum: Int = 0
    for number in intArray {
        sum += number
    }
    
    return sum / intArray.count
}


func add(firstTuple: (Int, Int), secondTuple: (Int, Int)) -> (Int, Int) {
    var finalTuple : (Int, Int) = (0,0)
    finalTuple.0 = firstTuple.0 + secondTuple.0
    finalTuple.1 = firstTuple.1 + secondTuple.1
    return finalTuple
}

func subtract(firstTuple: (Int, Int), secondTuple: (Int, Int)) -> (Int, Int) {
    var finalTuple : (Int, Int) = (0,0)
    finalTuple.0 = firstTuple.0 - secondTuple.0
    finalTuple.1 = firstTuple.1 - secondTuple.1
    return finalTuple
}

func add(firstDictionary: [String: Int], secondDictionary: [String: Int]) -> [String: Int] {
    var finalDictionary = [String: Int]()
    if firstDictionary.keys.contains("x") && secondDictionary.keys.contains("x") {
        finalDictionary["x"] = firstDictionary["x"]! + secondDictionary["x"]!
    } else {
        finalDictionary["NA"] = -123
    }
    return finalDictionary
}


func subtract(firstDictionary: [String: Int], secondDictionary: [String: Int]) -> [String: Int] {
    var finalDictionary = [String: Int]()
    if firstDictionary.keys.contains("x") && secondDictionary.keys.contains("x") {
        finalDictionary["x"] = firstDictionary["x"]! - secondDictionary["x"]!
    } else {
        finalDictionary["NA"] = -123
    }
    return finalDictionary
}






