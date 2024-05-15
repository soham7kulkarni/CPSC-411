import UIKit

struct Player {
    // structure definition goes here
}
class Festival {
    // class definition goes here
}


//Class and Structure name should be UpperCamelCase names
//properties and methods should be lowerCamelCase names
struct Area {
    var width = 0
    var height = 0
}
class Geometry {
    var area = Area()
    var name = ""
}

//Instance of the structure and class
let totalArea = Area()
let geoType = Geometry()

//Accessing Properties
print("The width of totalArea is \(totalArea.width)")
print("The width of geoType is \(geoType.area.width)")

geoType.area.width = 12
print("The width of geoType is now \(geoType.area.width)")

//Memberwise Initializer
let rectangular = Area(width: 74, height: 35)

//Structure is value type
let xy = Area(width: 1920, height: 1920)
var pq = xy
pq.width = 2048

print("pq is \(pq.width) units wide")
print("But xy is \(xy.width) units wide")

//Enum is value type
enum Number {
    case one, two, three, four
    mutating func changeToThree() {
        self = .three
    }
}
var currentNumber = Number.two
let previousNumber = currentNumber
currentNumber.changeToThree()


print("The current number is \(currentNumber)")
print("The previous number is \(previousNumber)")

//Class is reference type
let square = Geometry()
square.area = xy
square.name = "square"


let secondSquare = square
secondSquare.name = "rhombus"

print("The name property of secondSquare is \(secondSquare.name)")
print("The name property of Square is \(square.name)")

if square === secondSquare {
    print("square and secondSquare refer to the same Geometry instance.")
}

//Functions in class
class MethodCircle{
     var radius = 1.0
 
     func area() -> Double {
          return(3.14 * radius * radius)
      }

    func description() -> String{
        return("I am a Circle!")
     }
 }
var m = MethodCircle()
m.area()
m.description()

//Stored properties and computed properties
class Square{
    var side = 1.0
    var area:Double {
          return(side * side)
      }
  }
 
var c = Square()
c.area
c.side = 2.5
c.area

//getters ans setters
class Square2{
    var side = 2.5
    var area:Double {
        get {
           return(side*side)
          }
        set(area2) {
            side = (area2 * 2)
          }
     }
 }

var c2 = Square2()
c2.area
c2.area = 4
c2.side
c2.area = 19.625
c2.side

//init initializer
class Gadget {
  
  var name: String

  init(name: String){
  self.name = name
  }
}

var smartDevice = Gadget(name: "iPad")
print(smartDevice.name)

