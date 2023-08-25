
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
