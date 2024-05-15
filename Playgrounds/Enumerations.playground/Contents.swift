import UIKit

//Enumeration
//Singular
//Start with Capital letter
enum Anyname {
    // enumeration definition goes here
}

//Case keyword for each new case
//Do not have default int values
//Each case has data type - Brand
enum Brand {
    case Nike
    case Adidas
    case Newbalance
    case Puma
}

//multiple cases on single line
enum Season {
    case Spring, Summer, Fall, Winter
}


var favorite = Brand.Nike
favorite = .Adidas
//Once you assign specific case to Favorite, data type of the Favorite becomes Brand
//Next time you can assign another case directly

favorite = .Puma
switch favorite {
case .Nike:
    print("Brand is Nike")
case .Adidas:
    print("Brand is Adidas")
case .Newbalance:
    print("Brand is Newbalance")
case .Puma:
    print("Brand is Puma")
default:
    print("Different Brand")
}

//Enumeration defined
enum Contact {
    case email(String)
    case phone(Int, Int, Int)
    case address(String, String, String, String)
}
//Data type of each case is Contact
//It can have associated values of data type String, Int, String in this case

// Creating instances with associated values
let personalEmail = Contact.email("xyz@gmail.com")
let personalPhone = Contact.phone(1, 92831, 657)
let personalAddress = Contact.address("123 Main St", "Apt 4B", "City", "Country")

// Using a switch statement to handle associated values
func displayContactInfo(contact: Contact) {
    switch contact {
    case .email(let emailAddress):
        print("Email: \(emailAddress)")
    case .phone(let countryCode, let areaCode, let number):
        print("Phone: +\(countryCode) (\(areaCode)) \(number)")
    case .address(let street, let apt, let city, let country):
        print("Address:")
        print("Street: \(street)")
        print("Apt: \(apt)")
        print("City: \(city)")
        print("Country: \(country)")
    }
}

// Displaying contact information
displayContactInfo(contact: personalEmail)
displayContactInfo(contact: personalPhone)
displayContactInfo(contact: personalAddress)

//Assigning raw values
//All case should have values of same data type
//Unique
enum HTTPStatusCode: Int {
    case success = 200
    case notFound = 404
    case internalServerError = 500
}

// Accessing raw values
let successCode = HTTPStatusCode.success.rawValue
let notFoundCode = HTTPStatusCode.notFound.rawValue
let serverErrorCode = HTTPStatusCode.internalServerError.rawValue
print(successCode, notFoundCode, serverErrorCode)

//optional binding to try to access a HTTPStatusCode with a raw value of 200
//Returns Optional Enumeration case
// Creating an enum from a raw value
if let status = HTTPStatusCode(rawValue: 200) {
    print("Status code \(status.rawValue): \(status)")
} else {
    print("Invalid status code")
}

// Creating an enum from an invalid raw value
if let invalidStatus = HTTPStatusCode(rawValue: 300) {
    print("Status code \(invalidStatus.rawValue): \(invalidStatus)")
} else {
    print("Invalid status code")
}
//Implicitely assigning raw values
enum Number: Int {
    case one = 1, two, three, four, five, six, seven, eight, nine, ten
}
let value = Number.four.rawValue
print(value)
