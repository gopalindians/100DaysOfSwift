
import SwiftUI
//013 – Day 13 – Swift review, day one

//001 Variables and constants

var name = "Tim McGraw"
//let name = "Tim McGraw"
name = "Romeo"


//002 Types of Data

//var name
//name = "Tim McGraw"
//
//var name: String
//name = "Tim McGraw"

var name1: String
name1 = "Tim McGraw"

var age: Int
age = 25
//name1 = 25
//age = "Tim McGraw"

var latitude: Double
latitude = 36.166667

var longitude: Float
longitude = -86.783333
longitude = -86.783333
longitude = -186.783333
longitude = -1286.783333
longitude = -12386.783333
longitude = -123486.783333
longitude = -1234586.783333

var longitude1: Double


var stayOutTooLate: Bool
stayOutTooLate = true

var nothingInBrain: Bool
nothingInBrain = true

var missABeat: Bool
missABeat = false

var name2: String
name2 = "Tim McGraw"
var name3: String = "Tim McGraw"



//003 Operators

var a = 10
a = a + 1
a = a - 1
a = a * a

var b = 10
b += 10
b -= 10

var a1 = 1.1
var b1 = 2.2
var c1 = a + b

var name4 = "Tim McGraw"
var name5 = "Romeo"
var both = name4 + " and " + name5

var name6 = "Tim McGraw"
name6 == "Tim McGraw"


var stayOutTooLate1 = true
stayOutTooLate1
!stayOutTooLate1


var name7 = "Tim McGraw"
name7 == "Tim McGraw"
name7 != "Tim McGraw"



//004 String interpolation

var name8 = "Tim McGraw8"
var name9 = "Tim McGraw9"
"Your name is \(name8)"

var name10 = "Tim McGraw"
"Your name is " + name

var name11 = "Tim McGraw"
var age11 = 25
var latitude11 = 36.166667

"Your name is \(name11), your age is \(age11), and your latitude is \(latitude11)"


var age12 = 25
"You are \(age) years old. In another \(age12) years you will be \(age12 * 2)."


//005 Arrays

var evenNumbers = [2, 4, 6, 8]
var songs = ["Shake it Off", "You Belong with Me", "Back to December"]

var songs1 = ["Shake it Off", "You Belong with Me", "Back to December"]
songs1[0]
songs1[1]
songs1[2]

var songs2 = ["Shake it Off", "You Belong with Me", "Back to December"]
type(of: songs2)
var songs3:[Any] = ["Shake it Off", "You Belong with Me", "Back to December", 3]
type(of: songs3)

//var songs5: [String] = []
//songs5[0] = "Shake it Off"

var songs6 = [String]()

var songs7 = ["Shake it Off", "You Belong with Me", "Love Story"]
var songs8 = ["Today was a Fairytale", "Welcome to New York", "Fifteen"]
var both2 = songs7 + songs8

both2 += ["Everything has Changed"]



//006 Dictionaries
var person = ["Taylor", "Alison", "Swift", "December", "taylorswift.com"]

var person1 = ["first": "Taylor", "middle": "Alison", "last": "Swift", "month": "December", "website": "taylorswift.com"]
person1["middle"]
person1["month"]

var person2 = [
                "first": "Taylor",
                "middle": "Alison",
                "last": "Swift",
                "month": "December",
                "website": "taylorswift.com"
            ]

person2["middle"]
person2["month"]


//007 Conditional statements

var action007: String
var person007 = "hater"

if person007 == "hater" {
    action007 = "hate"
}
var action0071: String
var person0071 = "hater"

if person0071 == "hater" {
    action0071 = "hate"
} else if person0071 == "player" {
    action0071 = "play"
} else {
    action0071 = "cruise"
}

var action0072: String
var stayOutTooLate0072 = true
var nothingInBrain0072 = true

if stayOutTooLate0072 && nothingInBrain0072 {
    action0072 = "cruise"
}


if !stayOutTooLate0072 && !nothingInBrain0072 {
    action0072 = "cruise"
}


//008 Loops

print("1 x 10 is \(1 * 10)")
print("2 x 10 is \(2 * 10)")
print("3 x 10 is \(3 * 10)")
print("4 x 10 is \(4 * 10)")
print("5 x 10 is \(5 * 10)")
print("6 x 10 is \(6 * 10)")
print("7 x 10 is \(7 * 10)")
print("8 x 10 is \(8 * 10)")
print("9 x 10 is \(9 * 10)")
print("10 x 10 is \(10 * 10)")

for i in 1...10 {
    print("\(i) x 10 is \(i * 10)")
}

var str = "Fakers gonna"

for _ in 1...5 {
    str += " fake"
}

print(str)

var songs008 = ["Shake it Off", "You Belong with Me", "Look What You Made Me Do"]

for song in songs008 {
    print("My favorite song is \(song)")
}

var people008 = ["players", "haters", "heart-breakers", "fakers"]
var actions008 = ["play", "hate", "break", "fake"]

for i in 0...3 {
    print("\(people008[i]) gonna \(actions008[i])")
}


var people0081 = ["players", "haters", "heart-breakers", "fakers"]
var actions0081 = ["play", "hate", "break", "fake"]

for i in 0..<people0081.count {
    print("\(people0081[i]) gonna \(actions0081[i])")
}

var people0082 = ["players", "haters", "heart-breakers", "fakers"]
var actions0082 = ["play", "hate", "break", "fake"]

for i in 0..<people0082.count {
    var str = "\(people0082[i]) gonna"

    for _ in 1...5 {
        str += " \(actions0082[i])"
    }

    print(str)
}

var counter008 = 0

while true {
    print("Counter is now \(counter008)")
    counter008 += 1

    if counter008 == 556 {
        break
    }
}

var songs0081 = ["Shake it Off", "You Belong with Me", "Look What You Made Me Do"]

for song in songs0081 {
    if song == "You Belong with Me" {
        continue
    }

    print("My favorite song is \(song)")
}
