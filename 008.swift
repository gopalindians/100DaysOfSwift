import SwiftUI
//008 – Day 8: Structs, part one
//1. Using closures as parameters when they accept parameters

//001 Creating your own structs
struct Sport {
    var name: String
}
var tennis = Sport(name: "Tennis")
print(tennis.name)
tennis.name = "Lawn tennis"
