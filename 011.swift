
import SwiftUI
//011 – Day 11:  protocols, extensions, and protocol extensions

//001 Protocols

protocol Identifiable {
    var id: String { get set }
}

struct User: Identifiable {
    var id: String
}

func displayID(thing: Identifiable) {
    print("My ID is \(thing.id)")
}


//002 Protocol inheritance
protocol Payable {
    func calculateWages() -> Int
}

protocol NeedsTraining {
    func study()
}

protocol HasVacation {
    func takeVacation(days: Int)
}

protocol Employee: Payable, NeedsTraining, HasVacation { }


//003 Extensions

extension Int {
    func squared() -> Int {
        return self * self
    }
}
let number = 8
number.squared()


extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
}
number.isEven
