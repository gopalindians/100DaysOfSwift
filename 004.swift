import SwiftUI
//004 –  loops, loops, and more loops

//1. For loops
let count = 1...10

for number in count{
    print("Number is \(number)")
}


let albums = ["Red","1989","Reputation"]
for album in albums {
    print("\(album) is on Apple music")
}


print("Players gonna ")

for _ in 1...5 {
    print("*play")
}


let names = ["Sterling", "Cyril", "Lana", "Ray", "Pam"]

for name in names {
    print("\(name) is a secret agent")
}

let names1 = ["Sterling", "Cyril", "Lana", "Ray", "Pam"]

for _ in names1 {
    print("[CENSORED] is a secret agent!")
}
