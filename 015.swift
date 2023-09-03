
import SwiftUI
//015 – Day 15 –  Swift review, day three

//001 Properties

struct Person {
    var clothes: String
    var shoes: String

    func describe() {
        print("I like wearing \(clothes) with \(shoes)")
    }
}

let taylor = Person(clothes: "T-shirts", shoes: "sneakers")
let other = Person(clothes: "short skirts", shoes: "high heels")
taylor.describe()
other.describe()



//002 Static properties and methods

struct TaylorFan {
    static var favoriteSong = "Look What You Made Me Do"

    var name: String
    var age: Int
}

let fan = TaylorFan(name: "James", age: 25)
print(TaylorFan.favoriteSong)


//002 Access control

//class TaylorFan {
//    private var name: String?
//}

//003 Polymorphism and typecasting

class Album {
    var name: String

    init(name: String) {
        self.name = name
    }
}

class StudioAlbum: Album {
    var studio: String

    init(name: String, studio: String) {
        self.studio = studio
        super.init(name: name)
    }
}

class LiveAlbum: Album {
    var location: String

    init(name: String, location: String) {
        self.location = location
        super.init(name: name)
    }
}

var taylorSwift = StudioAlbum(name: "Taylor Swift", studio: "The Castles Studios")
var fearless = StudioAlbum(name: "Speak Now", studio: "Aimeeland Studio")
var iTunesLive = LiveAlbum(name: "iTunes Live from SoHo", location: "New York")

var allAlbums: [Album] = [taylorSwift, fearless, iTunesLive]

class Albumv1 {
    var name: String

    init(name: String) {
        self.name = name
    }

    func getPerformance() -> String {
        return "The album \(name) sold lots"
    }
}

class StudioAlbumv1: Albumv1 {
    var studio: String

    init(name: String, studio: String) {
        self.studio = studio
        super.init(name: name)
    }

    override func getPerformance() -> String {
        return "The studio album \(name) sold lots"
    }
}

class LiveAlbumv1: Albumv1 {
    var location: String

    init(name: String, location: String) {
        self.location = location
        super.init(name: name)
    }

    override func getPerformance() -> String {
        return "The live album \(name) sold lots"
    }
}


var taylorSwiftv1 = StudioAlbumv1(name: "Taylor Swift", studio: "The Castles Studios")
var fearlessv1 = StudioAlbumv1(name: "Speak Now", studio: "Aimeeland Studio")
var iTunesLivev1 = LiveAlbumv1(name: "iTunes Live from SoHo", location: "New York")

//var allAlbums: [Album] = [taylorSwiftv1, fearlessv1, iTunesLivev1]
//
//for album in allAlbums {
//    print(album.getPerformance())
//}


//005 Closures

let message = "Button pressed"

Button("Press Me", action: {
    print(message)
})

Button {
    print("The button was pressed")
} label: {
    Image("press-me")
}
