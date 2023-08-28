
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
