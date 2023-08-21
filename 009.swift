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
