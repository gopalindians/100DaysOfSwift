import SwiftUI
//010 – Day 10:  classes and inheritanc

//001 Creating your own classes

class Dog{
    var name:String
    var breed:String
    
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

let poppy =  Dog(name: "Poppy", breed: "Poddy");
