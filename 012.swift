
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
