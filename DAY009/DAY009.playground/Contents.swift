import UIKit

struct User {
    var name: String
    
    init(name: String) {
        print("\(name) was born")
        self.name = name
    }
}


var user = User(name: "John")

struct FamilyTree {
    init() {
        print("Creating family tree")
    }
}

struct Person {
    var name: String
    lazy var familyTree = FamilyTree()
    
    init(name: String) {
        self.name = name
    }
}

var Rob = Person(name: "Rob")
Rob.familyTree

struct Student {
    var name: String
    static var classSize = 0
    
    
    init(name: String) {
        self.name = name
        Student.classSize += 1
    }
}

var ed = Student(name: "Ed")
var lisa = Student(name: "Lisa")
var maisie = Student(name: "Maisie")

print(Student.classSize)

struct Associate {
    private var id: String

    init(id: String) {
        self.id = id
    }
    
    func getId() -> String {
        return "The associate number is \(id)"
    }
}

var Doe = Associate(id: "1234")

print(Doe.getId())
