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

//002 Class inheritance

class Dog1 {
    var name: String
    var breed: String

    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}

class Poodle2: Dog1 {
    init(name: String) {
        super.init(name: name, breed: "Poodle")
    }
}



//003 Overriding methods

class Dog3 {
    func makeNoise() {
        print("Woof!")
    }
}

class Poodle3: Dog3 {
}

let poppy3 = Poodle3()
poppy3.makeNoise()


class Poodle33: Dog3 {
    override func makeNoise() {
        print("Yip!")
    }
}

let poppy33 = Poodle33()
poppy33.makeNoise()



//004 Final classes

final class Dog44 {
    var name: String
    var breed: String

    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}


//005 Copying objects

class Singer {
    var name = "Taylor Swift"
}
var singer = Singer()
print(singer.name)

var singerCopy = singer
singerCopy.name = "Justin Bieber"

print(singer.name)

struct Singer1 {
    var name = "Taylor Swift"
}


//006 Deinitializers

class Person6 {
    var name = "John Doe"

    init() {
        print("\(name) is alive!")
    }

    func printGreeting() {
        print("Hello, I'm \(name)")
    }
    deinit {
        print("\(name) is no more!")
    }
}

for _ in 1...3 {
    let person = Person6()
    person.printGreeting()
}



//007 Mutability
class Singer7 {
    var name = "Taylor Swift"
}

let taylor = Singer7()
taylor.name = "Ed Sheeran"
print(taylor.name)
