import SwiftUI
//008 – Day 8: Structs, part one
//1. Using closures as parameters when they accept parameters

//001 Creating your own structs
struct Sport {
    var name: String
}
var tennis = Sport(name: "Tennis")
print(tennis.name)
tennis.name = "Lawn tennis"




//002 Computed properties

struct Sport1 {
    var name: String
}


struct Sport2 {
    var name: String
    var isOlympicSport: Bool

    var olympicStatus: String {
        if isOlympicSport {
            return "\(name) is an Olympic sport"
        } else {
            return "\(name) is not an Olympic sport"
        }
    }
}

let chessBoxing = Sport2(name: "Chessboxing", isOlympicSport: false)
print(chessBoxing.olympicStatus)


//003. Property observers

struct Progress {
    var task: String
    var amount: Int
}

var progress = Progress(task: "Loading data", amount: 0)
progress.amount = 30
progress.amount = 80
progress.amount = 100

struct Progress1 {
    var task: String
    var amount: Int {
        didSet {
            print("\(task) is now \(amount)% complete")
        }
    }
}


//004. Methods
struct City {
    var population: Int

    func collectTaxes() -> Int {
        return population * 1000
    }
}
let london = City(population: 9_000_000)
london.collectTaxes()


//005. Mutating methods

struct Person {
    var name: String

    mutating func makeAnonymous() {
        name = "Anonymous"
    }
}

var person = Person(name: "Ed")
person.makeAnonymous()



//006. Properties and methods of strings
let string = "Do or do not, there is no try."
print(string.count)
print(string.hasPrefix("Do"))
print(string.uppercased())
print(string.sorted())
