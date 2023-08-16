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


//2.While loops

var number = 1;
while number <= 20{
    print(number)
    number+=1
}
        
print("Ready or not, here I come!")


//3.Repeat loops

var number1 = 1

repeat {
    print(number1)
    number1 += 1
} while number1 <= 20

print("Ready or not, here I come!")
while false {
    print("This is false")
}

repeat {
    print("This is false")
} while false



//4.Exiting loops
var countDown = 10
while countDown >= 0 {
    print(countDown)

    if countDown == 4 {
        print("I'm bored. Let's go now!")
        break
    }

    countDown -= 1
}


//5.Exiting multiple loops
for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print ("\(i) * \(j) is \(product)")
    }
}

outerLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print ("\(i) * \(j) is \(product)")

        if product == 50 {
            print("It's a bullseye!")
            break outerLoop
        }
    }
}
