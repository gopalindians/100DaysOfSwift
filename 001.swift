import SwiftUI

//1. Variables
var greeting = "Hello, playground"
print(greeting);
greeting = "HOLA";
greeting = "NAMASTE"

//2. Strings and integers
var str = "Hello"
var age = 50
var population = 80_00_000

//3.Multi-line strings
//var str1 = """
//Here goes our
//multiline
//string
//"""

//throwing error
// error: unterminated string literal

//var str2 = """
//Here goes our \
//multiline \
//string
//"""


//4.Doubles and Booleans
var pi = 3.141
var awesome = true


//5.String interpolation
var score = 85
var str3 = "Your score was \(score)"
var results = "The test results are here: \(str3)"

//6.Constants
// use let to define constants
let taylor = "swift"

//7.Type annotations
let album:String = "Reputation"
let year:Int = 1989
let height:Double = 1.78
let taylorRocks: Bool = true
