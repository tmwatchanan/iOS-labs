//: Playground - noun: a place where people can play

import UIKit	

var str = "Hello, playground"

str = "Hi, playground"

let otherstr = "Hi, Watchanan"

let name = "Watchanan"

print("Hello \(name)")

var myInt = 8
print(myInt * 2)
print(myInt + 100)

myInt = myInt + 1

var a : Double = 8.73
var b : Float = 8.73
var c = 7.12

print(a / c)

print(Double(myInt) + a)

var number : Int? //optional
print(number)
let userEnterText = "3"
let userEnterInteger = Int(userEnterText)
//print(userEnterInteger!) //

//optional binding
if let catage = userEnterInteger {
    print(catage * 7)
}
else {
    print("no value")
}

//Array
var arr : Array<Int>
arr = [1, 2]
var array = [35, 36, 5, 2]
print(array[0])
print(array.count)
array.append(1)
array.remove(at: 1)
array

//challenge 3.87, 7.1, 8.9
//remove 7.1
//append 3.87 * 8.9

var aArr : Array<Double>
aArr = [3.87, 7.1, 8.9]
aArr.remove(at: 1)
aArr.append(aArr[0] * aArr[1])


//Dictionary
var Dic = ["computer" : "something to play call of duty", "coffee" : "best drink ever"]
print(Dic["computer"])
print(Dic["computer"]!)
Dic["coffee"]
Dic.count
Dic["pen"] = "Old fashioned"
Dic["pen"]
