
import SwiftUI
//014 – Day 14 –  Swift review, day two

//001 Functions



func favoriteAlbum(){
    print("My fav is fearless")
}


favoriteAlbum();

func favAlbum(name: String) {
    print("My fav is \(name)")
}


favAlbum(name: "fearless")


func printAlbumRelease(name:String,year:Int) -> Void {
    print("\(name) was released in \(year)")
}

printAlbumRelease(name: "Fearless", year: 2008)
printAlbumRelease(name: "Speaknow", year: 2010)
printAlbumRelease(name: "Red", year: 2012)


func countLettersInString(string:String) -> Void {
    print("The string \(string) has \(string.count) letters.")
}

countLettersInString(string: "H")

func countLettersInStringv2(myString string:String) -> Void {
    print("The string \(string) has \(string.count) letters.")
}

countLettersInStringv2(myString: "Hello")

func countLettersInStringv3(_ str: String) {
    print("The string \(str) has \(str.count) letters.")
}

countLettersInStringv3("Hel")


func countLetters(in string: String) {
    print("The string \(string) has \(string.count) letters.")
}

countLetters(in: "Hello")


func albumIsTaylor(name: String) -> Bool {
    if name == "Taylor Swift" { return true }
    if name == "Fearless" { return true }
    if name == "Speak Now" { return true }
    if name == "Red" { return true }
    if name == "1989" { return true }

    return false
}

if albumIsTaylor(name: "Red") {
    print("That's one of hers!")
} else {
    print("Who made that?!")
}

if albumIsTaylor(name: "Blue") {
    print("That's one of hers!")
} else {
    print("Who made that?!")
}


func getMeaningOfLife() -> Int {
    return 42
}

func getMeaningOfLifev2() -> Int {
    42
}






//001 Optionals

func getHaterStatus() -> String {
    return "Hate"
}

func getHaterStatusv2() -> String? {
    return "Hate"
}

func getHaterStatusv3(weather: String) -> String? {
    if weather == "sunny" {
        return nil
    } else {
        return "Hate"
    }
}

var status: String?
status = getHaterStatusv3(weather: "rainy")


func takeHaterAction(status: String) {
    if status == "Hate" {
        print("Hating")
    }
}


func yearAlbumReleasedv2(name: String) -> Int? {
    if name == "Taylor Swift" { return 2006 }
    if name == "Fearless" { return 2008 }
    if name == "Speak Now" { return 2010 }
    if name == "Red" { return 2012 }
    if name == "1989" { return 2014 }

    return nil
}



//003 Optional chaining


func albumReleased(year: Int) -> String? {
    switch year {
    case 2006: return "Taylor Swift"
    case 2008: return "Fearless"
    case 2010: return "Speak Now"
    case 2012: return "Red"
    case 2014: return "1989"
    default: return nil
    }
}

let album = albumReleased(year: 2006)
print("The album is \(album)")

let albumv1 = albumReleased(year: 2006)?.uppercased()
print("The album is \(album)")


let albumv2 = albumReleased(year: 2006) ?? "unknown"
print("The album is \(albumv2)")



//004 Enumerations

func getHaterStatus(weather: String) -> String? {
    if weather == "sunny" {
        return nil
    } else {
        return "Hate"
    }
}

enum WeatherType {
    case sun, cloud, rain, wind, snow
}

func getHaterStatusv1(weather: WeatherType) -> String? {
    if weather == WeatherType.sun {
        return nil
    } else {
        return "Hate"
    }
}

getHaterStatusv1(weather: WeatherType.cloud)



enum WeatherTypev2 {
    case sun
    case cloud
    case rain
    case wind
    case snow
}

func getHaterStatusv2(weather: WeatherType) -> String? {
    if weather == .sun {
        return nil
    } else {
        return "Hate"
    }
}

getHaterStatusv2(weather: .sun)


//func getHaterStatusv3(weather: WeatherType) -> String? {
//    switch weather {
//    case .sun:
//        return nil
//    case .cloud, .wind:
//        return "dislike"
//    case .rain:
//        return "hate"
//    }
//}
//
//
//getHaterStatusv3(weather: .sun)


//
//func getHaterStatus(weather: WeatherType) -> String? {
//    switch weather {
//    case .sun:
//        return nil
//    case .wind(let speed) where speed < 10:
//        return "meh"
//    case .cloud, .wind:
//        return "dislike"
//    case .rain, .snow:
//        return "hate"
//    }
//}
//
//getHaterStatus(weather: WeatherType.wind(speed: 5))



//005 Structs

struct Person {
    var clothes: String
    var shoes: String
}

let taylor = Person(clothes: "T-shirts", shoes: "sneakers")
let other = Person(clothes: "short skirts", shoes: "high heels")
print(taylor.clothes)
print(other.shoes)


struct Personv1 {
    var clothes: String
    var shoes: String
}

let taylorv1 = Personv1(clothes: "T-shirts", shoes: "sneakers")
let otherv1 = Personv1(clothes: "short skirts", shoes: "high heels")

var taylorCopy = taylorv1
taylorCopy.shoes = "flip flops"

print(taylorv1)
print(taylorCopy)


struct Personv2 {
    var clothes: String
    var shoes: String

    func describe() {
        print("I like wearing \(clothes) with \(shoes)")
    }
}


//006 Classes

class Personv5 {
    var clothes: String
    var shoes: String
}

class Personv6 {
    var clothes: String
    var shoes: String

    init(clothes: String, shoes: String) {
        self.clothes = clothes
        self.shoes = shoes
    }
}


class Singer {
    var name: String
    var age: Int

    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }

    func sing() {
        print("La la la la")
    }
}

var taylorv6 = Singer(name: "Taylor", age: 25)
taylorv6.name
taylorv6.age
taylorv6.sing()

class CountrySinger: Singer {

}


class CountrySingerv2: Singer {
    override func sing() {
        print("Trucks, guitars, and liquor")
    }
}

var taylorv5 = CountrySingerv2(name: "Taylor", age: 25)
taylorv5.sing()
