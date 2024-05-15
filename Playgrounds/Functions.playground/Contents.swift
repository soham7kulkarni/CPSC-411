import UIKit

// Defining a Function
//greet is name
//name is parameter name
//string is parameter type
//func greet(name: String) {
//    print("Hello, \(name)!")
//}
//
//// Calling a Function
////Andrew is argument value
//greet(name: "Andrew") // Output: Hello, Andrew!
//
//// Function Parameters
////a and b are parameters
//func add(a: Int, b: Int) -> Int {
//    return a + b
//}
//
//let sum = add(a: 8, b: 6) // sum = 14
//print(sum)

// Function Return Values
//func multiply(x: Int, y: Int) -> Int {
//    return x * y
//}
//
//print( multiply(x: 8, y: 3) )// product = 21
//
//
//// Function Without Parameters
//func sayHello() {
//    print("Hello!")
//}
//
//sayHello() // Output: Hello!
//
//// Function with Multiple Parameters
func calculate(a: Double, b: Double, operation: String) -> Double {
    switch operation {
    case "add":
        return a + b
    case "subtract":
        return a - b
    case "multiply":
        return a * b
    case "divide":
        return a / b
    default:
        return 0.0
    }
}
//
//let result = calculate(a: 20.0, b: 4.0, operation: "ADD") // result = 16.0
//print(result)
//
//// Function Without Return Values
//func displayMessage(message: String) {
//    print(message)
//}
//
//displayMessage(message: "Welcome!") // Output: Welcome!

// Function with Multiple Return Values (Tuple)
func getFullName(firstName: String, lastName: String) -> (String, String) {
    return (firstName, lastName)
}

let fullName = getFullName(firstName: "Oscar", lastName: "Warner") // fullName = ("Oscar", "Warner")
print(fullName)

// Argument Labels and Parameter Names
//forPrice - Argument label
//price - parameter name
//Double - data type of parameter
func calculateTotal(forPrice price: Double, quantity: Int) -> Double {
    let total = price * Double(quantity)
    return total
}

let totalPrice = calculateTotal(forPrice: 10.5, quantity: 3)
print("Total Price: $\(totalPrice)")

// Default Parameter Values
// Default Parameter Values
func power(base: Int, exponent: Int = 2) -> Int {
    return Int(pow(Double(base), Double(exponent)))
}

let square = power(base: 3) // square = 9
let cube = power(base: 2, exponent: 3) // cube = 16
print(square, cube)

// Passing a Function as a Parameter to Another Function
//Operation is type of function which accepts three parameters
//On line 101 we pass calculate function and provides two values a and b with value 4 and 8
func applyOperation(a: Double, b: Double, operation: (Double, Double, String) -> Double) -> Double {
    return operation(a, b, "add")
}

let added = applyOperation(a: 4.0, b: 8.0, operation: calculate) // added = 32.0
print(added)

//Variadic Parameters
func calculateProduct(_ numbers: Double...) -> Double {
    var product: Double = 1.0
    for number in numbers {
        product *= number
    }
    return product
}

let result1 = calculateProduct(2, 3, 4) // Returns 24.0 (2 * 3 * 4)
let result2 = calculateProduct(5.5, 2, 10) // Returns 110.0 (5.5 * 2 * 10)
let result3 = calculateProduct(1.5, 2.5, 3.5, 4.5) // Returns 59.0625 (1.5 * 2.5 * 3.5 * 4.5)
print(result1)
print(result2)
print(result3)

func display(text: String, repetitions: Int) {
  for i in 1 ... repetitions {
    print(text)
  }
}
display(text:"Hello", repetitions: 3)
