//: Playground - noun: a place where people can play

import UIKit

let fName = "Matt"
let lName = "Dickey"
var age = 24

println(fName + " " + lName)



println("My Name is \(fName)  \(lName). ")


if age < 21{
    println("No beer for you, little man!")
} else {
    println("Have a drink.")
}

//                                                      LOOPS
for count in 0...age{
    println(count)
}


/*                                              SHORTHAND IF STATEMENTS

question ? answer1 : answer2


if question {
    answer1
} else {
    answer2
}

*/



 if fName == "John"{
    println("That's not my name.")
 } else {println("That might be my name.")}


//                                                      OPTIONALS

var optionalString: String? = "Hello"
println(optionalString == nil)

var optionalName: String? = "John Appleseed"
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
}


var score: Int?
println("The score is \(score).")

    if score != nil {
        println("Score is \(score)")
    }else {
        println("There is no score yet.")
    }


func sayWhy(firstName:String, lastName:String) ->String{
    return "Why" + firstName + " " + lastName + "?"
}

let message = sayWhy("Derk","Sanders")

println(message)





//                                                      FUNCTIONS

func sayHello (first: String, last: String) {
    println("Hello \(first) \(last)")
}
sayHello("Matt", "Dickey")



//                                                         CLASSES

class Vehicle {
    var wheelNum = 4
    var maxSpeed = 25
    var seats = 5
    var tankCapacity = 20
    var name : String?
    var make : String?
    
    func aboutCar(){
        println("This is my Vehicle.")
    }
}



let myJeep = Vehicle()




let mario = Vehicle()
mario.name="Mario"
mario.make = "Saturn"





println("This is my car \(mario.name). It's made by \(mario.make) and has \(mario.wheelNum) wheels. . . for now. ")



class Bicycle : Vehicle {
    var reflectors = true;
}


let tenSpeed = Bicycle()
tenSpeed.wheelNum = 2
tenSpeed.tankCapacity = 0;

println(tenSpeed.reflectors)




















