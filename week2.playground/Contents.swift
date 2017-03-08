//: Playground - noun: a place where people can play

import UIKit

let age = 13
if age >= 18 {
    print("you can play!")
}
else
{
    print("you are too young")
}

let name = "tommie"
if name == "tommie" {
    print("hi \(name), welcome")
}
else {
    print("sorry" + name + "no welcome")
}

if name == "tommie" && age >= 18 {
    print("you're in condition")
}
else {
    print("sorry")
}

if name == "tommie" || name == "wat" {
    print("welcome \(name)")
}

let isMale = true

if isMale {
    print("you are male")
}

let username = "tommie"
let password = "password"

if username == "tommie" && password == "password" {
    print("Logged in")
}
else if username != "tommie" && password != "password" {
    print("Invalid username and password")
}
else if username == "tommie" {
    print("Invalid password")
}
else {
    print("Invalid username")
}





let array = [8,4,5,1]

for number in array {
    print(number)
}

var numbers = [7,2,9,4,1]

for (index, value) in numbers.enumerated() {
    numbers[index]
}

// Enumerator ------------------------------------------------------------------------------------------

enum compass {
    case north
    case east
    case south
    case west
}

var test1 : compass
//enum test1 { case.east }
let test2 = compass.north
//let test3 = compass.north-east

enum thailandLocation {
    case north, middle, northEast, west, east, south
}

// Associated Value ------------------------------------------------------------------------------------
enum ship {
    case dimension(Int, Int)
    case shipType(String)
    case life(Int)
}
var myShip = ship.dimension(20, 25)
myShip = .shipType("war")
myShip = .life(30)

switch myShip {
case .life(let currentLife):
    if currentLife <= 0 {
        print("End game")
    }
    else {
        print("Continue")
    }
default:
    break
}

// Raw value in Enum -----------------------------------------------------------------------------------
enum test: String {
    case south = "a" // declare raw value in String data type
    case east = "b"
}

enum move:Int {
    case left = -1
    case right = 1
}

var position:Int = 0
var result = move.left
switch result.rawValue {
case -1:
    position = position - 1
case 1:
    position = position + 1
default:
    break
}
print("Current position is \(position)")

// Function --------------------------------------------------------------------------------------------

/*func functionName(parameter)->returnType {
    statements
    return someValue
}*/

/*func functionName() {
    statements
 }*/

func sumInput(first: Int, second: Int)->(/*Void*/) {
    let result = first + second
    print("Sum of \(first) and \(second) is \(result)")
}
sumInput(first:2, second:3)

func sumInputArray(data: [Int])->Int {
    var sum = 0
    for myData in data {
        sum += myData
    }
    return sum
}
var myInput = [1,2,3,4,5]
var resultSum = sumInputArray(data: myInput)
print("Sum of number array is \(resultSum)")

func basicMath(dataInput:[Float])->(minData:Float, maxData:Float, sumData:Float, averageData: Float) {
    var sum: Float = 0
    var min: Float = dataInput[0]
    var max: Float = dataInput[0]
    for value in dataInput {
        sum += value
        min = (min < value) ? min : value
        max = (max > value) ? max : value
    }
    let num = Float(dataInput.count)
    let average = sum/num
    return (min, max, sum, average)
}

let currentData: [Float] = [23,34,12,6,28,39,100,2,9]
var (minR, maxR, sumR, averageR) = basicMath(dataInput: currentData)

func underScoreFunction(_ input1: Int, adder input2: Int)->Int {
    let result = Int(input1 + input2)
    return result
}
print(underScoreFunction(3, adder:6))

func theStarName(name: String, last:String = "The Star")->String {
    let result = name + " " + last
    return result
}

func newPosition(moveRight test: Bool, xPosition: Int)->Int {
    func goRight(xPosition: Int)->Int {
        return xPosition + 1
    }
    func goLeft(xPosition: Int)->Int {
        return xPosition - 1
    }
    let decision: (Int)->Int = test ? goRight : goLeft
    return decision(xPosition)
}

var str = "hello"

func printTheMessage() {	
    print(str)
}
printTheMessage()

func printOurMessage(message: String) {
    print(message)
}
printOurMessage(message: "this is call from a function")

// Method --------------------------------------------------------
class ClassName {
    var myProperty = 0
    func myMethod() {
        myProperty += 1
    }
    func myMethodTwo(inputNumber: Int) {
        self.myMethod()
        myProperty = myProperty + inputNumber
    }
}
var testClass = ClassName()
testClass.myMethod()
testClass.myProperty
testClass.myMethodTwo(inputNumber: 20)
testClass.myProperty

// External Parameter Name
class MyClassName {
    func multiplyNumber(inputNumber: Int, withNumber: Int)->Int {
        let myResult = inputNumber * withNumber
        return myResult
    }
}
var testClassName = MyClassName()
let resultClassName = testClassName.multiplyNumber(inputNumber: 4, withNumber: 5)

// Self Property
class MyFirstClass {
    var score = 0
    func addScore(_ score: Int)->Int {
        self.score = self.score + score
        return self.score
    }
}
var student = MyFirstClass()
student.addScore(10)

// Class ---------------------------------------------------------

class Error {
//    var player: String
//    var numberOfPlayer: Int
    var player: String = ""
    var numberOfPlayer: Int = 0
}
var instanceError = Error()
instanceError.player
instanceError.numberOfPlayer

class InitializerClass {
    var player: String
    var numberOfPlayer: Int
    init() {
        player = "tommie"
        numberOfPlayer = 1
    }
}
var instanceInit = InitializerClass()
instanceInit.player
instanceInit.numberOfPlayer

class parameteredInit{
    var player: String
    var numberOfPlayer: Int
    init (inputPlayer: String, inputNumberOfPlayer: Int) {
        self.player = inputPlayer
        self.numberOfPlayer = inputNumberOfPlayer
    }
}
var instanceParaInit = parameteredInit(inputPlayer: "tommie", inputNumberOfPlayer: 2)
instanceParaInit.player
instanceParaInit.numberOfPlayer

// Default value for Stored Property
class TwoInitClass {
    var player: String
    var numberOfPlayer: Int
    init() {
        player = "tommie"
        numberOfPlayer = 0
    }
    init (inputPlayer: String, inputNumberOfPlayer: Int) {
        self.player = inputPlayer
        self.numberOfPlayer = inputNumberOfPlayer
    }
}
var instanceTwoInit = TwoInitClass()
instanceTwoInit.player
instanceTwoInit.numberOfPlayer
var instanceTwoInit2 = TwoInitClass(inputPlayer: "wat", inputNumberOfPlayer: 3)
instanceTwoInit2.player
instanceTwoInit2.numberOfPlayer

// Computed Property
//class ComputedPropertyClass {
//    var score: Int = 0
//    let bonus: Int = 5
//    var totalScore: Int
//    get {
//        return score + bonus
//    }
//}

// Example -----------------------

