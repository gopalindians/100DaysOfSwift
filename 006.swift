import SwiftUI
//006 – Day 6: Closures, part one

//1. Creating basic closures
let driving = {
    print("I'm driving in my car")
}

driving()


//2.Accepting parameters in a closure

let driving1 = { (place: String) in
    print("I'm going to \(place) in my car")
}
driving1("London")


//3.Returning values from a closure
let driving2 = { (place: String) in
    print("I'm going to \(place) in my car")
}
let drivingWithReturn = { (place: String) -> String in
    return "I'm going to \(place) in my car"
}
let message = drivingWithReturn("London")
print(message)
