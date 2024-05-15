import UIKit


//Basic for loop
//for i in 1...5 {
//    print(i)
//}
//Loop with a specified range and step
//for j in stride(from: 1, to: 10, by: 2) {
//    print(j)
//}
// Loop with a specified range and step
//for j in stride(from: 1, through: 10, by: 1) {
//    print(j)
//}
// Nested for loop
//for row in 1...3 {
//    for col in 1...3 {
//        print("Row \(row), Column \(col)")
//    }
//}
//Loop through characters in a string
//let greeting = "Hello, World!"
//for char in greeting {
//    print(char)
//}

//while loop
//var count = 1
//while count <= 5 {
//    print("While loop: Count is \(count)")
//    count+=1
//}

//repeat-while
//var number = 1
//repeat {
//    print("Repeat-While loop: Number is \(number)")
//    number += 1
//} while number < 5


//let day = "Monday"
//// Basic switch with cases
//switch day {
//case "Monday":
//    print("It's Monday.")
//case "Tuesday":
//    print("It's Tuesday.")
//case "Wednesday":
//    print("It's Wednesday.")
//default:
//    print("It's another day.")
//}

//Switch with range matching
//let score = 90
//switch score {
//case 0..<60:
//    print("Fail")
//case 60..<70:
//    print("D")
//case 70..<80:
//    print("C")
//case 80..<90:
//    print("B")
//case 90...100:
//    print("A")
//default:
//    print("Invalid score")
//}

//valid switch case
//let Initial: Character = "h"
//switch Initial {
//case "h":
////case "H":
//    print("The letter H")
//default:
//    print("Not the letter H")
//}

////Switch with compound cases
//let fruit = "cherry"
//switch fruit {
//case "apple", "pear":
//    print("It's an apple or pear")
//case "banana", "cherry":
//    print("It's a banana or cherry")
//default:
//    print("It's another fruit")
//}


//Switch and where
//let temperature = 18
//switch temperature {
//case ..<0:
//    print("It's freezing!")
//case 0..<10 where temperature % 2 == 0:
//    print("It's cold and even.")
//case 0..<10:
//    print("It's cold.")
//case 10..<20 where temperature % 2 == 0:
//    print("It's cool and even.")
//case 10..<20:
//    print("It's cool.")
//default:
//    print("It's warm.")
//}

//fallthrough
//let no = 1
//switch no {
//case 1:
//    print("One")
//    fallthrough
//case 2:
//    print("Two")
//    fallthrough
//case 3:
//    print("Three")
//case 4:
//    print("Four")
//default:
//    print("Other")
//}

//continue
//for number in 1...5 {
//    if number == 3 {
//        continue
//    }
//    print("Current number: \(number)")
//}

//break
for number in 1...5 {
    if number == 3 {
        break // Exit the loop when number is 3
    }
    print("Current number: \(number)")
}
