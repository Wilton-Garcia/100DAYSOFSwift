import UIKit

protocol Indentifiable {
    var id: String { get set }
}

struct User: Indentifiable {
    var id: String
}

struct Client: Indentifiable {
    var id: String
}

func displayID(thing: Indentifiable) {
    print("My ID is \(thing.id)")
}


let user = User(id: "5")
let client = Client(id:  "89710")

displayID(thing: user)
displayID(thing: client)

protocol Payable {
    func calculates() -> Int
}

protocol NeedsTraining {
    func study()
}

protocol HasVacation {
    func takeVacation(days: Int)
}

protocol Employee: Payable, NeedsTraining, HasVacation { }

extension Int {
    func squared() -> Int {
        return self * self
    }
}

let number = 8
print(number.squared())
print(2.squared())


extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
}


print(number.isEven)
print(number.squared().isEven)
print(3.squared())


let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]
let beatles = Set(["John", "Paul", "George", "Ringo"])

extension Collection {
    func summarize() {
        print(("Ther are \(count) of us:"))
        
        for name in self {
            print(name)
        }
    }
}

pythons.summarize()
beatles.summarize()

protocol hasID {
    var id: String {get set}
    func identify()
}

extension hasID {
    func identify() {
        print("My ID is \(id).")
    }
}

struct Animal: hasID {
    var id: String
}

let dog = Animal(id: "dog-1351")
dog.identify()


struct Child: hasID {
    var id: String
    func identify() {
        print("The id for a child is a name, in this casa \(id)")
    }
}

let michelle = Child(id: "Michelle")
michelle.identify()
