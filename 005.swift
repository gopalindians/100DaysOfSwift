import SwiftUI
//005 – functions, parameters, and errors

//1. Writing functions

func printHelp() {
    let message = """
Welcome to MyApp!

Run this app inside a directory of images and
MyApp will resize them all into thumbnails
"""

    print(message)
}

printHelp()

func readUserInput() {
    while true {
        print("Reading user input...")
        break
    }
}
readUserInput()


//2.Accepting parameters
print("Hello, world!")
func square(number: Int) {
    print(number * number)
}
square(number: 8)


//3. Returning values

func square1(number: Int) -> Int {
    return number * number
}

let result = square1(number: 8)
print(result)


//4. Parameter labels

func sayHello(to name: String) {
    print("Hello, \(name)!")
}
sayHello(to: "Taylor")

//5. Omitting parameter labels

func greet(_ person: String) {
    print("Hello, \(person)!")
}

greet("Taylor")

//6. Default parameters

func greet(_ person: String, nicely: Bool = true) {
    if nicely == true {
        print("Hello, \(person)!")
    } else {
        print("Oh no, it's \(person) again...")
    }
}

greet("Taylor")
greet("Taylor", nicely: false)


//7.Variadic functions
print("Haters", "gonna", "hate")

func square2(numbers: Int...) {
    for number in numbers {
        print("\(number) squared is \(number * number)")
    }
}

square2(numbers: 1, 2, 3, 4, 5)


//8. Writing throwing functions

enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }

    return true
}


enum BuildingError: Error {
    case tooHigh
    case tooLow
}

func constructBuilding(floors: Int) throws {
    if floors < 10 {
        throw BuildingError.tooLow
    } else if floors > 500 {
        throw BuildingError.tooHigh
    }
    print("Perfect - let's get building!")
}



//9.Running throwing functions

do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password.")
}
