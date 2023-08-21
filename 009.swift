import SwiftUI
//009 – Day 9: access control, static properties, and laziness

//001 Initializers
struct User {
    var username: String
}

var user = User(username: "twostraws")

struct User1 {
    var username: String

    init() {
        username = "Anonymous"
        print("Creating a new user!")
    }
}

var user2 = User1()
user.username = "twostraws"



//002.Referring to the current instance
struct Person1 {
    var name: String

    init(name: String) {
        print("\(name) was born!")
        self.name = name
    }
}

//003.Lazy properties

struct FamilyTree {
    init() {
        print("Creating family tree!")
    }
}

struct Person2 {
    var name: String
    lazy var familyTree = FamilyTree()

    init(name: String) {
        self.name = name
    }
}

var ed = Person2(name: "Ed")
