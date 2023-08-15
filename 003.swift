import SwiftUI
//003 – operators and conditions

//1. Arithmetic Operators

let firstScore = 12
let secondScore = 4
let total = firstScore + secondScore
let difference = firstScore - secondScore
let product = firstScore * secondScore
let divided = firstScore / secondScore
let remainder = 13 % secondScore

//2.Operator overloading

let meaningOfLife = 42
let doubleMeaning = 42 + 42
let fakers = "Fakers gonna "
let action = fakers + "fake"
let firstHalf = ["John", "Paul"]
let secondHalf = ["George", "Ringo"]
let beatles = firstHalf + secondHalf


//3.Compound assignment operators
var score = 95
score -= 5
var quote = "The rain in Spain falls mainly on the "
quote += "Spaniards"

//4.Comparison operators
let firstScore2 = 6
let secondScore2 = 4
firstScore2 == secondScore
firstScore2 != secondScore
firstScore2 < secondScore
firstScore2 >= secondScore
"Taylor" <= "Swift"

//5.Conditions
let firstCard = 11
let secondCard = 10

if firstCard + secondCard == 21 {
    print("Blackjack!")
}
if firstCard + secondCard == 21 {
    print("Blackjack!")
} else {
    print("Regular cards")
}
if firstCard + secondCard == 2 {
    print("Aces – lucky!")
} else if firstCard + secondCard == 21 {
    print("Blackjack!")
} else {
    print("Regular cards")
}
