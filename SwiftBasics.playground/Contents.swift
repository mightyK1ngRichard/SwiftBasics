//: A UIKit based Playground for presenting user interface
// copyright 2022 Dmitriy <dimapermyakov55@gmail.com>

import UIKit
import PlaygroundSupport
import Darwin
// ------  variables.
var name = "Hi, Dmitriy"
var surname : String = "Permyakov"
let pi = 3.14 // constant
var num1 : Int = 10
var num2 = 20
var doubleNum : Double = 7.77
var isTrue : Bool = true
print(" \(num1) + \(num2) = \(num1 + num2)")
// ------ Сonditional operator.
if isTrue && num2 == 20{
    print("The cycle has been completed successfully!")
} else {
    print("Failed")
}

var result = (num1 == 10) ? "The ternary operator works!" : "It's doesn't work!"
let food = "tomatoes"
switch food {
case "pasta":
    print("pasta")
case "tomatoes":
    print("tomatoes")
default:
    print("Default")
}

// ------ Array.
var arr = [Int]()
if arr.isEmpty{
    print("Array is empty")
}
arr.append(10)
arr.append(11)
arr += [12, 13, 14]
arr[0] = 88
arr.insert(777, at: 4)
arr.remove(at: 4)

var newArr = Array(repeating: 0, count: 3)
var arr3 = arr + newArr
for el in arr3 {
    print("---> \(el)")
}
// ------ For.
for i in 1...5 {
    print(i)
}
for i in 1...10 where i % 2 == 0 {
    print(i)
}
// ------ While.
var i = 0
while i < 10 {
    i += 1
    break
}
repeat{
    i += 8
} while (i < 10)
// ------ Dictionary.
var dict = [String : Int]()
dict["Dima"] = 19
dict["Stas"] = 777
var dictNew : [String : Int] = ["Dima" : 89, "Vova" : 99]

for (key, value) in dict{
    print("--> key = \(key) and value = \(value)")
}
// ------ Tupple.
let h = 190
let w = 89
let tupple = (h, w)
print(tupple.0, tupple.1)

let newTupple = (height: 190, weight: 89)
print(newTupple.height, newTupple.weight)
// ------ Optional values.
var friend : String?
friend = "Vova"
if friend != nil {
    var person = friend!
    print("=======> \(person)")
}
// ------ Functionals.
func getAge(oldAge: Int, newAge : Double, PersoneName : String = "Anonymous") -> String {
    return "\(PersoneName)'s age is \(Double(oldAge)+newAge)"
}
var text = getAge(oldAge: 10, newAge: 7, PersoneName: "Dima")
print(text)

// TOP!!! Analogue in Python is *args !!!!!!!!!!!
func multiply(nums: Int...) -> Int {
    var res = 1
    for num in nums {
        res *= num
    }
    return res
}
print(multiply(nums: 1,2,3,4,5,6,7))


func twoItem(num: Int) -> (two: Int, three: Int) {
    return (num + 1, num * 6)
}
let resultFunc = twoItem(num: 6)
print(resultFunc.two, resultFunc.three)
// ------ Сlosure. Analogue in Python is Lambda func.
var square: (Int) -> (Int) = {
    num in
    return num * num
}
print(square(5))


var numbers = [6, 7, 9, 4, 25]
let sortedNums = numbers.sorted(by: {
    x, y in x < y
})
for el in sortedNums{
    print(el)
}

let squareNums = numbers.map({
    (num: Int) -> String in
    "\(num * num)"
})
print("\(squareNums)")
// ------ Enum.

enum Cars {
    case Audi
    case BMW
    case Volvo
}

var car = Cars.BMW

// ------ Struct.
struct Square{
    var length : Int
    
    func sum (num : Int) -> Int{
        return num + num
    }
}

var s = Square(length: 6)
s.sum(num: s.length)

// ------ Class.
class Car {
    var model : String = "No"
    var weight : Int = 0
    var speed : Int = 0
    init (model : String, weight : Int, speed : Int)  {
        self.model = model
        self.weight = weight
        self.speed = speed
    }
    func info() -> (model : String, weight : Int, speed : Int) {
        return (model, weight, speed)
    }
    func set(model : String = "No"){
        self.model = model
    }
    func set(weight : Int = 0){
        self.weight = weight
    }
    func set(speed : Int = 0){
        self.speed = speed
    }
}

var audi = Car(model: "Audi", weight: 1000, speed: 200)
audi.info()
audi.set(model: "NewAudi")
audi.info()
