import SwiftUI
//007 – Day 7: closures part two
//1. Using closures as parameters when they accept parameters

func travel(action: (String) -> Void) {
    print("I'm getting ready to go.")
    action("London")
    print("I arrived!")
}

travel { (pl: String) in
    print("I'm going to \(pl) in my car")
}


let changeSpeed = { (speed: Int) in
    print("Changing speed to \(speed)kph")
}

func buildCar(name: String, engine: (Int) -> Void) {
    // build the car
}

//2.Using closures as parameters when they return values

func travel1(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}

travel1 { (place: String) -> String in
    return "I'm going to \(place) in my car"
}


//3.Shorthand parameter names


func travel2(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}

travel2 { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

travel2 { place -> String in
    return "I'm going to \(place) in my car"
}
travel2 { place in
    "I'm going to \(place) in my car"
}

travel2 {
    "I'm going to \($0) in my car"
}



//4.Closures with multiple parameters
func travel3(action: (String, Int) -> String) {
    print("I'm getting ready to go.")
    let description = action("London", 60)
    print(description)
    print("I arrived!")
}

travel3 {
    "I'm going to \($0) at \($1) miles per hour."
}


//5.Returning closures from functions
func travel5() -> (String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}

let result5 = travel5()
result5("India")


//6.Capturing values

func travel6() -> (String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}

let result6 = travel6()
result6("London")
