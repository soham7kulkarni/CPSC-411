import UIKit

//Instance methods

// Define a 'Car' class
class Car {
    var brand: String
    var isEngineRunning = false

    init(brand: String) {
        self.brand = brand
    }
    // Instance method to start the car's engine
    func startEngine() {
        if !isEngineRunning {
            print("\(brand) car's engine is now running.")
            isEngineRunning = true
        } else {
            print("\(brand) car's engine is already running.")
        }
    }
}
// Create two instances of the 'Car' class
let car1 = Car(brand: "Toyota")
let car2 = Car(brand: "Honda")
// Call the 'startEngine' method on 'car1' and 'car2'
car1.startEngine()
car2.startEngine()

//Type Methods

class Utility {
    static func feetToMeters(feet: Double) -> Double {
        return feet * 0.3048
    }
}
// Define a 'Utility' class with a type method for unit conversion
let meters = Utility.feetToMeters(feet: 10.0)
print("10 feet is equal to \(meters) meters.")
// Call the type method directly on the class

//self keyword and methods
class CoffeeMachine {
    var coffeeType: String
    
    init(coffeeType: String) {
        self.coffeeType = coffeeType
    }
    
    // Instance method to brew coffee
    func brewCoffee() {
        print("Brewing a delicious cup of \(coffeeType) coffee!")
    }
    
    // Instance method to set the coffee type
    func setCoffeeType(to coffeeType: String) {
        self.coffeeType = coffeeType
        print("Coffee type set to \(coffeeType).")
    }
}
// Create a CoffeeMachine instance with the default coffee type
var myCoffeeMachine = CoffeeMachine(coffeeType: "Espresso")
// Brew coffee with the default type
myCoffeeMachine.brewCoffee()
// Set a new coffee type using the method parameter
myCoffeeMachine.setCoffeeType(to: "Latte")
// Brew coffee with the new type
myCoffeeMachine.brewCoffee()

//Inheritence

// Superclass
class Pet {
    var name: String
    var happiness: Int
    
    init(name: String) {
        self.name = name
        self.happiness = 50 // A happiness level from 0 to 100
    }
    
    func feed() {
        print("\(name) is happily eating.")
        happiness += 10
    }
    
    func play() {
        print("\(name) is having fun!")
        happiness += 20
    }
}
// Subclass 1: Dog
class Dog: Pet {
    var breed: String
    
    init(name: String, breed: String) {
        self.breed = breed
        super.init(name: name) // Call the superclass's initializer
    }
    
    func bark() {
        print("\(name) is barking loudly!")
    }
    
    override func play() {
        super.play() // Call the superclass's play method
        print("\(name) is chasing a ball.")
    }
}
// Subclass 2: Cat
class Cat: Pet {
    var color: String
    
    init(name: String, color: String) {
        self.color = color
        super.init(name: name) // Call the superclass's initializer
    }
    
    func purr() {
        print("\(name) is purring softly.")
    }
    
    override func feed() {
        print("\(name) is finicky about eating.")
        happiness += 5
    }
}
//var don = "don pablo"
// Example usage:
let horse = Pet(name: "Blaze")
horse.feed()
horse.play()
let dog = Dog(name: "Jake", breed: "Golden Retriever")
dog.feed()
dog.play()
dog.bark()
let cat = Cat(name: "don", color: "Calico")
cat.feed()
cat.play()
cat.purr()


//guard statement
var age = 12
while age <= 18 {
    
  // Guard condition to check if the person is old enough to watch a movie rated 13+
  guard age >= 15 else {
    print("Sorry, you are too young to watch this movie.")
    age += 1
    continue
  }

  // If we've reached this point, it means the person is old enough to watch the movie.
  print("Enjoy the movie!")
  
  // Move on to the next person
  age += 1
}
//guard let
func unwrapGift() {
    let giftBox: String? = nil

    guard let giftInside = giftBox else {
        print("The box is empty. There's no gift inside.")
        return
    }

    print("I'm unwrapping the gift, and inside, I find: \(giftInside)")
}

unwrapGift()


