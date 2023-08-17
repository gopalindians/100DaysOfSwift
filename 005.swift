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
