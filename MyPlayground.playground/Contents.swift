import UIKit


// VARIABLES, TYPES (strictly typed)

var intValue: Int = 0
intValue = 2

var floatingValue = 1.2

var name: String = "Jan"


// TYPE CASTING

Double(intValue) + floatingValue


// STRING CONCATENATION

"Jan hat " + String(2) + " Punkte!"
"Jan hat \(intValue) Punkte!"


// CONSTANTS

let constant = "constant value"
//contant = "other value" // not possible


// PRINT (to console)

print("lala")


// ARRAYS

var list: [String] = [
    "Wert1",
    "Wert2"
]
list.remove(at: 0) // may crash, if not available
list.append("Wert3")
if list.count > 0 {
    list[0]
}

var dictionary: [String: Int] = [
    "Wert1": 100,
    "Wert2": 20
]
dictionary["Wert1"]


// CONTROL FLOW

for item in list {
    print(item)
}

// TASK: count list of numbers


// OPTIONALS

var highscore: Int? = 1 // value is optional, may be 'nil'

if highscore != nil {
    highscore = highscore! + 1
}

if let realHighscore = highscore {
//    print(realHighscore)
//    print(highscore)
    highscore = realHighscore + 1
}


let firstname = "Jan"
var lastname: String?

"Hallo \(firstname)!"

// TASK: add lastname to string, if available


// SWITCH CASE

switch "test" {
case "test":
    print("test")
//    fallthrough // will break, if not 'fallthrough' is used
default:
    break
}


// FUNCTIONS

func doSomething(_ index: Int, item: String) -> Int {
    return 0
}

doSomething(0, item: "")


func doSomethingElse(with index: Int, from otherIndex: Int) {}

doSomethingElse(with: 0, from: 0)


// CLASSES

class Car {
    
    var color: String = "black"
    
    var length: Double {
        return 1.2 // computed value
    }
    
    func doAnything() {}
    
}

class Bus: Car {
    
    var space: Int = 50
    
    override init() {
        super.init()
        
        self.color = "yellow" // override here for "default" value
    }
    
}

var blueCar = Car()
blueCar.color = "blue"
blueCar.doAnything()

var redBus = Bus()
redBus.color = "red"
redBus.space = 10


// ENUMS

enum ColorType {
    
    case Red, Green, Blue
    
}

let carColorType: ColorType = .Red


// EXTENSIONS

extension Car {
    
    func doSomethingSpecial() {}
    
}

redBus.doSomethingSpecial()


