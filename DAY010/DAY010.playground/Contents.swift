import UIKit

class Dog {
    var name: String
    var breed: String
    
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
    
    func makeNoise() {
        print("Au au")
    }
}

let poppy = Dog(name: "poppy", breed: "Husky")

final class Husky: Dog {
    init(name: String){
        super.init(name: name, breed: "Husky")
    }
    
    override func makeNoise() {
        print("Auuuuuuuuuuuu")
    }
}

let littleDog = Husky(name: "Siberia")

poppy.makeNoise()
littleDog.makeNoise()


struct popSinger {
    var name: String = "Taylor Swift"
}

var popSinger1 = popSinger()
var copyPopSinger1 = popSinger1
copyPopSinger1.name = "Rihana"

print(popSinger1.name)
print(copyPopSinger1.name)

class rapSinger {
    var name: String = "Eminem"
}

var rapSinger1 = rapSinger()
var copyRapSinger1 = rapSinger1
copyRapSinger1.name = "50 Cent"

print(rapSinger1.name)
print(copyRapSinger1.name)

class Person {
    var name: String = "Jhon Doe"
    
    init() {
        print("Welcome to the world \(name)")
    }
    
    func sayHello() {
        print("Hello form \(name)")
    }
    
    deinit {
        print("Good by to \(name)")
    }
}

for _ in 1...3 {
    let person = Person()
    person.sayHello()
}

class Mutable {
    var attribute: String = "untouched"
}


let mutable = Mutable()
mutable.attribute = "touched"

print(mutable.attribute)
