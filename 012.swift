
import SwiftUI
//012 – Day 12:  – optionals, unwrapping, and typecasting

//001 Handling missing data

var age: Int? = nil
age = 38

var income: Int? = nil
income = 38_00_000


//002 Unwrapping optionals
var name: String? = nil
if let unwrapped = name {
    print("\(unwrapped.count) letters")
} else {
    print("Missing name.")
}


//003 Unwrapping with guard

func greet(_ name: String?) {
    guard let unwrapped = name else {
        print("You didn't provide a name!")
        return
    }

    print("Hello, \(unwrapped)!")
}

//004 Force unwrapping
let str2 = "5"
let num = Int(str2)
let num2 = Int(str2)!


//005 Implicitly unwrapped optionals
let age1: Int! = nil


//006 Nil coalescing

func username(for id: Int) -> String? {
    if id == 1 {
        return "Taylor Swift"
    } else {
        return nil
    }
}

let user = username(for: 15) ?? "Anonymous"

//007 Optional chaining
let names = ["John", "Paul", "George", "Ringo"]
let beatle = names.first?.uppercased()


//008 Optional try

enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }

    return true
}

do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password.")
}

if let result = try? checkPassword("password") {
    print("Result was \(result)")
} else {
    print("D'oh.")
}


try! checkPassword("sekrit")
print("OK!")


//009 Failable initializers
let str = "5"
let num1 = Int(str)

struct Person {
    var id: String

    init?(id: String) {
        if id.count == 9 {
            self.id = id
        } else {
            return nil
        }
    }
}
