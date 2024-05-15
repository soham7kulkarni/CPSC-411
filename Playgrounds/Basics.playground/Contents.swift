import UIKit

//var i = 15
//var j : Int
//j = i
//print(j)


//let (a, b) = (10, 20)
//print(a, b)

//
//let Four = 4
//let negativeFour = -Four // minusFour equals -4
//let positiveFour = -negativeFour // plusThree equals 4, or "minus minus four“
//print(negativeFour)
//print(positiveFour)
//let Fourpositive = +negativeFour
//print(Fourpositive)

//
//var z = 10
//z += 7
//print(z)

//
//print((5, "elephant") <  (5, "giraffe"))
////print(("yellow", true) < ("red", false))


//let contentHeight = 60
//let hasHeader = false
//let rowHeight = contentHeight + (hasHeader ? 30 : 15)
//print(rowHeight)


//for index in 1...5
//{
//    print("\(index) times 5 is \(index * 5)")
//}

//let isSunny = true
//if !isSunny {
//    print("Remember to take an umbrella!")
//} else {
//    print("Enjoy the sunny day!")
//}

//let isRegisteredUser = true
//let hasValidSubscription = true
//
//if isRegisteredUser && hasValidSubscription {
//    print("Welcome! You have access to premium content.")
//    } else {
//        print("Please register or subscribe to access premium content.")
//}


//let hasDiscountCoupon = false
//let isPrimeMember = false
//
//if hasDiscountCoupon || isPrimeMember {
//    print("Congratulations! You qualify for a special offer.")
//} else {
//    print("Explore our regular deals and promotions.")
//}

//let isMember = false
//let hasCoupon = false
//let totalAmount = 120
//
//if isMember && (hasCoupon || totalAmount >= 100) {
//    print("Congratulations! You are eligible for a discount.")
//} else {
//    print("Explore our membership options and promotions.")
//}


//var emptyString = ""
//var anotherEmptyString = String()
//
//let bookTitle = "The Adventure Begins"
//let excerpt = """
//Once upon a time, in a land far, far away, a young hero set forth on a journey. "How shall I overcome the challenges ahead?" the hero wondered. "Start with courage," the old sage advised, "and persevere until you reach your destiny."
//"""
//print(excerpt)

//let mysteryCode: [Character] = ["S", "o", "l", "v", "e", "!"]
//let decodedMessage = String(mysteryCode)
//print(decodedMessage)

//let part1 = "Greetings"
//let part2 = " from the cosmos"
//var cosmicGreeting = part1 + part2
//print(cosmicGreeting)
//let step = "Follow the path"
////step += part2
//print(step)

//let incompleteStart = "Begin the journey"
//let finalDestination = " across the universe"
//print(incompleteStart + finalDestination)
//let completeStart = "Embark on a voyage"
//print(completeStart + finalDestination)


//let sentence = "Exploring the universe is an exciting adventure.  "
//print("The number of characters in the sentence is \(sentence.count)")


//let city = "Madrid"
//print(city[city.startIndex])
//print(city[city.index(before: city.endIndex)])
//print(city[city.index(after: city.startIndex)])
////print(city[city.endIndex])

//var temperatures: [Double]
//var fruits: [String]
//
//var quantities: [Int] = [10, 5, 8, 15, 3]
//print(quantities)

//let weatherForecast = ("Sunny", 28.5, true)
//// weatherForecast is of type (String, Double, Bool)
//
//let (weatherCondition, temperature, isWarm) = weatherForecast
//print("Today's weather is \(weatherCondition).")
//print("The temperature is \(temperature) degrees Celsius.")
//print("Is it warm? \(isWarm)")


//let temperature_data = ("2023-08-28", "12:00 PM", 28.5, "Celsius")
//let (_, _, temp, unit) = temperature_data
//print("Temperature:", temp, unit)

//let data = (42, "Hello", 3.14, true)
//print("Value 1:", data.0)
//print("Value 2:", data.1)
//print("Value 3:", data.2)
//print("Value 4:", data.3)

//var int = 5
//print (" value is \(int)")

//let httpResponse = (statusCode: 200, description: "OK")
//print("The status code is \(httpResponse.statusCode)")
//print("The status message is \(httpResponse.description)")

//Creating an array of countries
var countries = ["USA", "Canada", "Australia", "India", "France"]


// Accessing elements by index
//let firstCountry = countries[0] // "USA"
//let thirdCountry = countries[2] // "Australia"
//let lastCountry = countries[4] // "France"
//print(firstCountry, thirdCountry, lastCountry)
//
//Adding elements
//countries.append("UK")
//countries.insert("Germany", at: 3)
//print(countries)
//countries.remove(at: 4)
//print(countries)
//countries.removeLast()
//print(countries)
////countries.removeAll()
//print(countries)
//
////checking existence
//let numberOfCountries = countries.count
//print(numberOfCountries)
//let containsFrance = countries.contains("France")
//print(containsFrance)

//var name: Set<String> // Declares an empty set of strings
//var numbers: Set<Int> // Declares an empty set of integers
//var vowels: Set<Character> = ["a", "e", "i", "o", "u"]
//var primeNumbers: Set<Int> = [2, 3, 5, 7, 11, 11]
//print(vowels)
//print(primeNumbers)

 //Creating sets of programming languages
var frontendLanguages: Set<String> = ["HTML", "CSS", "JavaScript"]
var backendLanguages: Set<String> = ["Python", "CSS", "Java"]


//// Performing set operations
//let allLanguages = frontendLanguages.union(backendLanguages)
//let commonLanguages = frontendLanguages.intersection(backendLanguages)
//let uniqueLanguages = frontendLanguages.subtracting(backendLanguages)
//print(allLanguages)
//print(commonLanguages)
//print(uniqueLanguages)
//print(frontendLanguages)

//
// Checking if an element is in a set
//let containsCSS = frontendLanguages.contains("CSS")
//let containsSwift = backendLanguages.contains("Swift")
//print(containsCSS)
//print(containsSwift)
//
//// Removing an element from a set
//frontendLanguages.remove("HTML")
//print(frontendLanguages)

//Creating an empty set of strings
var colors: Set<String> = []

////Adding elements to the set
//colors.insert("Red")
//colors.insert("Blue")
//colors.insert("Green")
//print(colors)
//colors.remove("Green")
//print(colors)
//colors.remove("Blue")
//colors.remove("Red")
//print(colors)


//var fruitPrices: [String: Double] = ["Apple": 0.75, "Banana": 0.5, "Orange": 0.6]
//print(fruitPrices)
//var programmingLanguages: [Int: String] = [1: "Swift", 2: "Python", 3: "Java"]
//print(programmingLanguages)

// Creating a dictionary of user roles
//var userRoles = ["Alice": "Admin", "Bob": "User", "Carol": "User"]
//print(userRoles)
//// Adding a new key-value pair
//userRoles["David"] = "Guest"
//print(userRoles)
//// Updating an existing value
//userRoles.updateValue("Superuser", forKey: "Alice")
//print(userRoles)
//// Deleting a key-value pair
//userRoles.removeValue(forKey: "Bob")
//print(userRoles)
//
//// Checking if a key exists in the dictionary
//let containsAlice = userRoles.keys.contains("Alice")
//let containsEve = userRoles.keys.contains("Eve")
//print(containsEve)

//print(containsAlice)
//print(containsEve)
//
//let Fruits = ["Apple", "Banana", "Orange", "Mango"]
//
//// Using a for-in loop
//for fruit in Fruits {
//    print(fruit)
//}
////
//// Using forEach closure
//Fruits.forEach { fruit in
//    print(fruit)
//}

let Colors: Set<String> = ["Red", "Green", "Blue", "Yellow"]

//// Using a for-in loop
//for color in Colors {
//    print(color)
//}
//
//// Using forEach closure
//Colors.forEach { color in
//    print(color)
//}

let scores = ["Alice": 95, "Bob": 89, "Charlie": 75, "David": 88]

// Using a for-in loop to iterate over key-value pairs
for (name, score) in scores {
    print("\(name) scored \(score) points")
}

// Using forEach closure to iterate over key-value pairs
scores.forEach { (name, score) in
    print("\(name) scored \(score) points")
}

// Iterating over keys only
for name in scores.keys {
    print(name)
}
//
// Iterating over values only
for score in scores.values {
    print(score)
}
//
//
//
var inputdata1: Int = 10
print(inputdata1)
print(type(of: inputdata1))



