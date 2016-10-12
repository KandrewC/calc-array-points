//
//  main.swift
//  CalcArrayPoints
//
//  Created by Andrew Kan on 10/9/16.
//  Copyright © 2016 Andrew Kan. All rights reserved.
//  Main

import Foundation

func add(x: Int, y: Int) -> Int {
    return(x + y)
}


func subtract(x: Int, y: Int) -> Int {
    return(x - y)

}

func multiply(x: Int, y: Int) -> Int {
    return(x * y)

}

func divide(x: Int, y: Int) -> Int {
    return(x / y)
}

func mathOp(x : Int, y : Int, op : (Int, Int) -> Int) -> Int {
    return op(x, y)
}


func add(intArray: [Int]) -> Int {
    return (intArray.reduce(0, +))
}

func multiply(intArray: [Int]) -> Int {
    return (intArray.reduce(1, *))
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

func mathOp(intArray : [Int], op : ([Int]) -> Int) -> Int {
    return op(intArray)
}

func add(firstTuple: (Int, Int), secondTuple: (Int, Int)) -> (Int, Int) {
    var finalTuple : (Int, Int) = (0,0)
    finalTuple.0 = firstTuple.0 + secondTuple.0
    finalTuple.1 = firstTuple.1 + secondTuple.1
    return finalTuple
}

//func addTest(_ tuples: (Int, Int)...) -> (Int, Int) {
//    if tuples.count > 2 { return nil }
//        var finalTuple : (Int, Int) = (0,0)
//        finalTuple.0 = firstTuple.0 + secondTuple.0
//        finalTuple.1 = firstTuple.1 + secondTuple.1
//        return finalTuple
//}

func subtract(firstTuple: (Int, Int), secondTuple: (Int, Int)) -> (Int, Int) {
    var finalTuple : (Int, Int) = (0,0)
    finalTuple.0 = firstTuple.0 - secondTuple.0
    finalTuple.1 = firstTuple.1 - secondTuple.1
    return finalTuple
}

func add(point1: [String : Int], point2: [String : Int]) -> (Int, Int) {
    return (Int(point1["x"]! + point2["x"]!), Int(point1["y"]! + point2["y"]!))
}

// Stop if "x" or "y" is not the keys
//    func add(point1: [String : Int], point2: [String : Int]) -> (Int, Int) {
//        if !point1.keys.contains("x") || !point2.keys.contains("x") ||
//           !point1.keys.contains("y") || !point2.keys.contains("y") {
//            return (0,0)
//        }
//            return (Int(point1["x"]! + point2["x"]!), Int(point1["y"]! + point2["y"]!))
//        }

    
func subtract(point1: [String : Int], point2: [String : Int]) -> (Int, Int) {
    return (Int(point1["x"]! - point2["x"]!), Int(point1["y"]! - point2["y"]!))
}


// Stop if doubles are passed in
//    func add(point1: [String : Double], point2: [String : Double]) -> (Double, Double) {
//        if !point1.keys.contains("x") || !point2.keys.contains("x") ||
//           !point1.keys.contains("y") || !point2.keys.contains("y") {
//            return (0,0)
//        }
//            return (Double(point1["x"]! + point2["x"]!), Double(point1["y"]! + point2["y"]!))
//        }

var testDictionary : [String : Int] = ["x" : 1, "y" : 10]
var testDictionary2 : [String : Int] = ["x" : 1, "y": 1]
var testTuple : (Int, Int) = (1, 1)
var testTuple2 : (Int, Int) = (1, 3)
var testArray : [Int] = [1,2,3,4,5]



let result2 = mathOp(intArray: testArray, op: count)
print("Result = \(result2)")


print(add(firstTuple: testTuple, secondTuple: testTuple2))

print(add(point1: testDictionary, point2: testDictionary2))

