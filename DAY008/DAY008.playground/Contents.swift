struct Sport {
    var name: String
    var isOlympicSport: Bool
    
    var olympicStatus: String {
        if isOlympicSport {
            return "Olympic Sports"
        } else {
            return "Is not a olypic Sport"
        }
    }
}

let tennis = Sport(name: "Tennis", isOlympicSport: true)
print(tennis.name)
print(tennis.olympicStatus)


struct Progress {
    var task: String
    var ammount: Int {
        didSet {
            print("\(task) is \(ammount)% complete!")
        }
    }
}

var progress = Progress(task: "Loading Data", ammount: 0)

progress.ammount = 25
progress.ammount = 50
progress.ammount = 75
progress.ammount = 100

struct City {
    var population: Int
    
    func collectTaxes() -> Int{
        return population * 1000
    }
}

let london = City(population: 9_000_000)
london.collectTaxes()

struct Person {
    var name: String
    
    mutating func makeSecret() {
        name = "**********"
    }
}

var person = Person(name: "Ed")
person.makeSecret()

let string = "Do or do not, there is no try."
print(string.count)
print(string.hasPrefix("Do"))
print(string.uppercased())
print(string.sorted())

var toys = ["Woody"]

print(toys.count)

toys.append("Buzz")
toys.firstIndex(of: "Buzz")

print(toys.sorted())

toys.remove(at: 0)
print(toys.sorted())
