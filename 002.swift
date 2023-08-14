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


//4.Arrays vs sets vs tuples
let address = (house: 555, street: "Taylor Swift Avenue", city: "Nashville")
let set = Set(["aardvark", "astronaut", "azalea"])
let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]

//5.Dictionaries
let heights = [
    "Taylor Swift": 1.78,
    "Ed Sheeran": 1.73
]
heights["Taylor Swift"]

//6.Dictionary default values

let favoriteIceCream = [
    "Paul": "Chocolate",
    "Sophie": "Vanilla"
]

favoriteIceCream["Paul"]
favoriteIceCream["Charlotte"]
favoriteIceCream["Charlotte", default: "Unknown"]

let results = [
    "english": 100,
    "french": 85,
    "geography": 75
]

let historyResult = results["history", default: 0]


//7.Creating empty collections
var teams = [String: String]()
teams["Paul"] = "Red"

//var /*results*/ = [Int]()
var words = Set<String>()
var numbers = Set<Int>()
var scores = Dictionary<String, Int>()

//var results = Array<Int>()
//var numbers = Set<Int>()


//8.Enumerations
enum Result {
    case success
    case failure
}

let result4 = Result.failure
