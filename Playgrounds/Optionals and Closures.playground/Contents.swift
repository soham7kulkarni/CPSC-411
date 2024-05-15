import UIKit

//var greeting = "Hello, playground"
//
////Optionals
////Can hold nil Value
////prevents errors formed from assigning variables of different types.
//var city: String?
////2 WAYS TO UNWRAP OPTIONALS - forced unwrapping and optional binding
////Forced unwrapping
//city = ""
////print(city!)
////optional bindings
//if let location = city {
// print("The value is: \(location)")
//} else {
// print("city is nil")
//}
//if let city{
//    print("city is \(city)")
//} else {
//    print("city is nil")
//}
////implicitely unwrapped optionals
////when you know optional value is confirmed to exist immediately after the optional is first defined
//var state: String! = "California"
//var actualState: String = state
//print(actualState)

//Closures

//Sorted Method
let numbers = [10, 5, 8, 3, 12, 6]
// Define a function to sort numbers in descending order
func descending(_ num1: Int, _ num2: Int) -> Bool {
    return num1 > num2
}
// Use the sorted(by:) method to sort the numbers using the descending function
var sortedNumbers = numbers.sorted(by: descending)
print(sortedNumbers)


// Use a closure expression to sort numbers in descending order
var sortNumbers = numbers.sorted(by: { (num1: Int, num2: Int) -> Bool in
    return num1 > num2
})
print(sortNumbers)
//Inline closure expression
var reversedNumbers = numbers.sorted(by: { (no1: Int, no2: Int) -> Bool in return no1 > no2 } )

reversedNumbers = numbers.sorted(by: { no1, no2 in return no1 > no2 } )
reversedNumbers = numbers.sorted(by: { no1, no2 in no1 > no2 } )
reversedNumbers = numbers.sorted(by: > )

//Without Trailing closures
//  function(closure: {
//      }
//  })
//Trailing closures
//  function() {
//
//  }

//Passing multiple closures as a parameter to the function
//func performOperation(
//    onSuccess: () -> Void,
//    onFailure: (Int) -> Void
//) {
//    // Simulate an operation that might succeed or fail
//    let success = false
//    
//    if success {
//        onSuccess()
//    } else {
//        let errorNo = 404
//        onFailure(errorNo)
//    }
//}
//
//// Example usage
//performOperation(
//    onSuccess: {
//        print("Operation succeeded!")
//    },
//    onFailure: { errorNo in
//        print("Operation failed with error: \(errorNo)")
//    }
//)
//Capturing Constants and Variables from surroundings
func makeHomeworkCounter(subject: String) -> () -> Int {
    var completedCount = 0
    
    func completeHomework() -> Int {
        completedCount += 1
        return completedCount
    }
    
    return completeHomework
}

// Create homework counters for different subjects
let mathHomeworkCounter = makeHomeworkCounter(subject: "Math")
let historyHomeworkCounter = makeHomeworkCounter(subject: "History")

// Complete homework for math and history
let mathHomework1 = mathHomeworkCounter() // Completed Math homework: 1
let historyHomework1 = historyHomeworkCounter() // Completed History homework: 1
let mathHomework2 = mathHomeworkCounter() // Completed Math homework: 2

print("Homework Counts:")
print(mathHomework1)
print(historyHomework1)
print(mathHomework2)

let counter = mathHomeworkCounter
let math = counter()
print(math)
