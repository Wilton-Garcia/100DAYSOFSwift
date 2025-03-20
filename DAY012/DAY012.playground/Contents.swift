import UIKit

var age:Int? = nil

age = 38

var name: String? = nil

if let unwrapped = name {
    print("\(unwrapped.count) letters")
} else {
    print("Missing name")
}

func greet(_ name: String?) {
    guard let unwrapped = name else {
        print("You didn't provide a name!")
        return
    }
    
    print("Hello, \(unwrapped)!")
}

greet(nil)
greet("Viola")

let str = "5"
let num = Int(str)
let forcedNum = Int(str)!


let birthYear: Int! = nil

func username(for id: Int) -> String? {
    if id == 1 {
        return "Taylor Swift"
    } else {
        return nil
    }
}

let user = username(for: 15) ?? "Anonymous"

let names = ["Lisa", "Maisie", "Michelle", "Viola"]

let person = names.first?.uppercased()

enum PasswprdError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswprdError.obvious
    }
    
    return true
}

do {
    try checkPassword("password")
    print("That password is good")
} catch {
    print("You can't use that password")
}


if let result = try? checkPassword("password") {
    print("Resulta was \(result)")
} else {
    print("D'oh.")
}

try! checkPassword("sekrit")
print("ok")

struct Person {
    var id: String

    init?(id: String) {
        if id.count == 9 {
            self.id = id
        } else {
            return nil
        }
    }
}

class Animal { }
class Fish: Animal { }

class Dog: Animal {
    func makeNoise() {
        print("Woof!")
    }
}

let pets = [Fish(), Dog(), Fish(), Dog()]


for pet in pets {
    if let dog = pet as? Dog {
        dog.makeNoise()
    }
}
