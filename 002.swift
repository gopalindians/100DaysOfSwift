import SwiftUI
//002 Complex data types

//1. Arrays

let john = "John Lennon"
let paul = "Paul McCartney"
let george = "George Harrison"
let ringo = "Ringo Starr"
let beatles = [john, paul, george, ringo]
beatles[1]
print(beatles[1]);



//2. Sets

let colors = Set(["red", "green", "blue"])
print(colors)
let colors2 = Set(["red", "green", "blue", "red", "blue"])
print(colors2)



//3.Tuples
var name = (first: "Taylor", last: "Swift")
name.0
name.first

var website = (name: "Apple", url: "www.apple.com")
var person = (name: "Paul", age: 40, isMarried: true)