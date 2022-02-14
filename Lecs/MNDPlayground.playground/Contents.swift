import UIKit

var greeting = "Hello, playground"

var variableNumber: Int = 42
variableNumber = 0
variableNumber = 1_000_000 //underscores make this more readable

var integer: Int = 100
var decimal: Double = 12.5
integer = Int(decimal)

// Tuples
let coordinates: (Int, Int) = (2, 3)

//let x: Int = coordinates.0
//let y: Int = coordinates.1

let circle: (x:Int, y:Int, radius:Int)
//populate
circle.x = 5
circle.y = 10
circle.radius = 20

let coordinates3D: (x: Int, y: Int, z: Int) = (2, 3, 1)
//let x = coordinates3D.x
//let y = coordinates3D.y
//let z = coordinates3D.z

let (x,y,_) = coordinates3D

print(x)
print(y)
//print(z) //will give an error as not defined this time

let dateTemp: (month:Int, day:Int, year:Int, averageTemperature:Double) = (2, 3, 2022, 37.9)

let(_, day, _, averageTemp) = dateTemp
print(day, averageTemp)

let randomTuple = (1, 2)
let aInferred = randomTuple.0

let add = 2 + 6
let subtract = 10 - 2
let multiply = 2 * 4
let divide = 24 / 3
let modulo = 28 % 10

//In Swift, you can use the truncatingRemainder function with fractional numbers, like so:
let xx = 11.6
let r = xx.truncatingRemainder(dividingBy: 1.2)
//print(r)

//The shift left and shift right operations take the binary form of a decimal number and shift the digits left or right, respectively. Then they return the decimal form of the new binary number.
let shiftLeft = 1 << 3
let shiftRight = 32 >> 2

var counter = 0
counter += 1
// counter = 1
counter -= 1
// counter = 0

let hourlyRate = 19.5
let hoursWorked = 10
let totalCost = hourlyRate * Double(hoursWorked)

var flagRaised: Bool = false
var isOver65 = true
// both the above are the same

var stillWorking = true

var hasDisposableIncome = (isOver65 && stillWorking)
var mightHaveDisposableIncome = (!isOver65 || stillWorking)

let numbers = 1...9 //note this is of type ‘ClosedRange<Int>’ try different ranges that does and does not include the number 10
let containsTen = numbers.contains(10)
print(containsTen)

var (a, b) = (100, 101)
let aFirst = a < b
print(aFirst)

let doesOneEqualTwo = (1 == 2)
let doesOneNotEqualTwo = (1 != 2)
let isOneGreaterThanTwo = (1 > 2)
let isOneLessThanTwo = (1 < 2)

"a" == "A"

let characterA: Character = "a"
let characterApple: Character = ""

//This data type is designed to hold only single characters. The String data type, on the other hand, stores multiple characters.

//Concatenation
var message = "Hello" + " my name is "
let name = "Phil"
message += name // "Hello my name is Phil"
print(message)

//Adding Characters:
let exclamationMark: Character = "!"
message += String(exclamationMark) // "Hello my name is Phil!"

message = "Hello my name is \(name)!" // "Hello my name is Phil!"
message.count

// TODO: check why this won't work
//let count = name.characters.count

let oneThird = 1.0 / 3.0
let oneThirdString = "One third is \(oneThird) as a decimal"

let guess1 = "a"
let guess2 = "b"
var equals: Bool = false
equals = guess1 == guess2

let order = "a" < "b"

let stringModule = "6COSC004W Mobile Native Development"
stringModule.uppercased()
stringModule.lowercased()

if (2 > 1) {
print("Yes, 2 is greater than 1.")
}

//if else
let animal = "Fox"
if (animal == "Cat" || animal == "Dog") {
print("Animal is a house pet.")
} else {
print("Animal is not a house pet.")
}


//if elseif

var hourOfDay = 12
var timeOfDay: String
if (hourOfDay < 6) {
timeOfDay = "Early morning"
} else if (hourOfDay < 12) {
timeOfDay = "Morning"
} else if (hourOfDay < 17) {
timeOfDay = "Afternoon"
} else if (hourOfDay < 20) {
timeOfDay = "Evening"
} else if (hourOfDay < 24) {
timeOfDay = "Late evening"
} else {
timeOfDay = "INVALID HOUR!"
}
print(timeOfDay)

a = 5
b = 10

let mini = a < b ? a : b //read this as if a < b then a else b
let maxi = a > b ? a : b //read this as if a > b then a else b

let answer = min(10, 5)

//Switch statements
let number = 10
switch (number) {
case 0:
    print("zero")
case 1:
    print("one")
default:
    print("Outside range")
}

//Switch with strings
let stringAnimal = "Dog"
switch (stringAnimal) {
case "Cat", "Dog":
    print("Animal is a house pet.")
default:
    print("Animal is not a house pet.")
}


hourOfDay = 12
//let timeOfDay: String
switch (hourOfDay) {
case 0, 1, 2, 3, 4, 5:
timeOfDay = "Early morning"
case 6, 7, 8, 9, 10, 11:
timeOfDay = "Morning"
case 12, 13, 14, 15, 16:
timeOfDay = "Afternoon"
case 17, 18, 19:
timeOfDay = "Evening"
case 20, 21, 22, 23:
timeOfDay = "Late evening"
default:
timeOfDay = "INVALID HOUR!"
}
print(timeOfDay)

//This switch statement uses the let-where syntax, meaning the case will match only when a certain condition is true. In this example, we have designed the case to match if the value is even—that is, if the value modulo 2 equals 0.
let num = 10
switch (num) {
case let x where x % 2 == 0: //notice this line
    print("Even")
default:
    print("Odd")
}

//Partial Matching in Switch Statements
var coordinatesNew: (x: Int, y: Int, z: Int) = (3, 2, 0)
switch (coordinatesNew) {
case (0, 0, 0): // 1
print("Origin")
case (0, _, _): // 2
print("On the x-axis.")
case (_, 0, _): // 3
print("On the y-axis.")
case (_, _, 0): // 4
print("On the z-axis.")
default: // 5
print("Somewhere in space")
}

let coordinates2: (x: Int, y: Int, z: Int) = (3, 2, 5)
switch (coordinates2) {
case (let x, let y, _) where y == x:
    print("Along the y = x line.")
case (let x, let y, _) where y == x * x:
    print("Along the y = x^2 line.")
default:
    break
}

// Ranges
let closedRange = 0...5
let halfOpenRange = 0..<5

let hourOfDay1 = 12
let timeOfDay1: String
switch (hourOfDay1) {
case 0...5:
    timeOfDay1 = "Early morning"
case 6...11:
    timeOfDay1 = "Morning"
case 12...16:
    timeOfDay1 = "Afternoon"
case 17...19:
    timeOfDay1 = "Evening"
case 20..<24:
    timeOfDay1 = "Late evening"
default:
    timeOfDay1 = "INVALID HOUR!"}


//For loops
for index in 0...5{
    print("\(index) times 5 is \(index * 5)")
    
}

let maximum = 10
var sum = 0
for i in 0..<maximum {
    sum += i
    print(sum)
}

sum = 1
while sum < 1000 {
sum = sum + (sum + 1)
print(sum)
}

//Repeat While loops
sum = 1
repeat{ sum = sum + (sum + 1)
} while sum < 1000
            

let result3 = abs(-10)


// about the underscore usage
func add(_ a: Int, _ b: Int) -> Int //note the underscores
{
return a + b
}
let r1 = add(23, 45) //very familiar way of calling a function
func addNew(a: Int, b: Int) -> Int
{
return a + b
}
let rr = addNew(a: 23, b: 34)
//the above is actually more like Objective C style


// introduction to classes in Swift
class Person {
    var fName:String = ""
    var lName:String = ""
}
// classes in Swift are reference types.
//The above class uses the default init()

let person = Person()
person.fName = "Phil"
person.lName = "Trwoga"


class Person2 {
    var fName:String = ""
    var lName:String = ""
    
    init (firstName: String, secondName :String){
        self.fName = firstName
        self.lName = secondName
    }
}

let person2 = Person2(firstName: "Peter",secondName: "Parker")

//Note that you must use this init in this case. If we want the choice of both inits then we would put in the ‘default’ init like so:
//init () {}

class Person3 {
    var fName:String?
    var lName:String?
    
    init (firstName: String, secondName :String){
        self.fName = firstName
        self.lName = secondName
    }
    
    init () {
    }
}

//? makes variables optionals

let spiderMan = Person3(firstName: "Peter",secondName: "Parker")
//or
let ironMan = Person3()
ironMan.fName = "Tony"
ironMan.lName = "Stark"


//Inheritance
//Syntax class <class name>:<base class>

class Student:Person3
{
var iD:String?
var course:String?
}

let newStudent = Student(firstName: "Luke", secondName: "Cage")

newStudent.iD = "w1245333"
newStudent.course = "BSc Computer Science"


//Extensions
//It can be very useful to extend the class/structure/enumeration without actually rewriting the base code. This can be useful when you do not have access to the base as it is part of a framework or library. Take the example of Int and imagine that we wish to add an absolute function for convenience (it does have one so this is just for illustration). See https://developer.apple.com/documentation/swift/int

extension Int {
    func absoluteVal()->Int
    {
        if self < 0
        {
            return -self
        }
        else
        {
            return self
        }
    }
}

//We would then use this as shown below:
let someInt = -4
print(someInt.absoluteVal())


extension Person3{
    func printName() {
        print("\(self.fName!) \(self.lName!)")
    }
}

newStudent.printName()

// Visal sensei: So for this you will have to unwrap the variables, or it's easier to give it default values with
//print("\(self.fname ?? "")")
//or if you know that self.fname is never nil, you can use
//print("\(self.fname!)")
