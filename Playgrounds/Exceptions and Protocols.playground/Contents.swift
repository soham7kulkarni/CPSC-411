import UIKit

// Exception handling in Swift


struct DollarStore {
  var inventory: [String: Int]

  mutating func purchase(_ quantity: Int, _ item: String) -> Double {
    if let available = inventory[item] {
      if available >= quantity {
        inventory[item] = available - quantity
        return Double(quantity)
      } else {
        return 0.0
      }
    } else {
        return 0.0
    }
  }
}

var sixTen = DollarStore(inventory: [
  "milk" : 10,
  "egg" : 8,
  "tomato" : 7
])

print(sixTen.purchase(3, "egg"))   // Outputs: 3.0
print(sixTen.purchase(11, "milk")) // Outputs: 0.0
print(sixTen.purchase(5, "soda"))  // Outputs: 0.0


enum MyError: Error {
    case divisionByZero
    case negativeValue
}

func divide(_ dividend: Int, by divisor: Int) throws -> Int {
    guard divisor != 0 else {
        throw MyError.divisionByZero
    }

    guard dividend >= 0 && divisor >= 0 else {
        throw MyError.negativeValue
    }

    return dividend / divisor
}

func performDivision() {
    do {
        let result = try divide(10, by: 0)
        print("Result: \(result)")
    } catch MyError.divisionByZero {
        print("Error: Division by zero")
    } catch MyError.negativeValue {
        print("Error: Negative values are not allowed")
    } catch {
        print("An unexpected error occurred: \(error)")
    }
}

performDivision()

//Protocol
protocol Attackable {
    var damage: Int { get set }
    func attack(target: Attackable)
    func takeDamage(_ amount: Int)
}

struct Hero: Attackable {
    var damage: Int

    init(damage: Int) {
        self.damage = damage
    }

    func attack(target: Attackable) {
        print("Hero attacks for \(damage) damage")
        target.takeDamage(damage)
    }

    func takeDamage(_ amount: Int) {
        print("Hero takes \(amount) damage")
    }
}

struct Enemy: Attackable {
    var damage: Int

    init(damage: Int) {
        self.damage = damage
    }

    func attack(target: Attackable) {
        print("Enemy attacks for \(damage) damage")
        target.takeDamage(damage)
    }

    func takeDamage(_ amount: Int) {
        print("Enemy takes \(amount) damage")
    }
}

let hero = Hero(damage: 10)
let enemy = Enemy(damage: 5)

hero.attack(target: enemy)
enemy.attack(target: hero)

