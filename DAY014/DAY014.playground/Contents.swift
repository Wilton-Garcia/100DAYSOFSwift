import UIKit

var greeting = "Hello, playground"

func getPersonName() {
    print("Daisy")
}

getPersonName()

func displayPersonName(name: String) {
    print("Person name is \(name)")
}

displayPersonName(name: "Aiy")

func printCodeAndName(name: String, code: Int) {
    print("Code for \(name) is \(code)")
}

printCodeAndName(name: "Arya", code: 546)
printCodeAndName(name: "Sansa", code: 213)
printCodeAndName(name: "Daenerys", code: 666)

func counterLettersInString(name: String) {
    print("The string \(name) has \(name.count) letters")
}

counterLettersInString(name: "Alexandra")


func numberIsPar(namber n: Int) {
    if n % 2 == 0 {
        print("number is par")
    } else {
        print ("number is oven")
    }
}

numberIsPar(namber: 1)
numberIsPar(namber: 2)

func squareRootFor(_ n: Int) {
    print("The square root for \(n) is \(n * n)")
}

squareRootFor(2)
squareRootFor(3)

func findNumberLetterIsPar(in string: String) {
    if string.count % 2 == 0 {
        print("True")
    }
}

extension String {
    func log() {
        print(self)
    }
}

"True".log()

func returnZeroForPar(in int: Int) -> Int {
    if int % 2 == 0 {
        return 0
    }
    return -1
}

print(returnZeroForPar(in: 0))


func getHatterStatus(weather: String) -> String? {
    if weather == "sunny" {
         return nil
    } else {
        return "Hate"
    }
}

var status = getHatterStatus(weather: "rainy")

if let unwrappedStatus = status {
    "Non optional".log()
} else {
    "block".log()
}


func takeHaterAcion(status: String) {
    if status == "Hate" {
        print("Hatting")
    }
}


func birthYear(name: String) -> Int? {
    if name == "w" { return 1995 }
    if name == "a" { return 1995 }
    return nil
}

var names = ["Lisa","Maisie","Michelle"]

func position(of string: String, in array: [String]) -> Int? {
    for i in 0..<array.count {
        if array[i] == string {
            return i
        }
    }
    return nil
}


var forcedValue: String? = "Miranda"


print(forcedValue)
print(forcedValue!)

var people: String = "Viola"
var peolp32: String? = "Milla"
var people3: String! = "Sofia"


func birthDate(year: Int) -> String? {
    switch year  {
    case 2006: return "Maisie"
    case 2010: return "Michelle"
    default: return nil
    }
}

let named = birthDate(year: 2006)?.uppercased()
print("The name is \(named)")

let newNamed = birthDate(year: 2012) ?? "not found"
print(newNamed)

enum userStatus {
    case online, offline
}

func getStatusMessage(for status: userStatus) -> String?{
    if status == .online {
        "User is avaliable to talk".log()
        return "OK"
    } else {
        "user is not avaliable".log()
        return "Call it Later"
    }
}

getStatusMessage(for: .online)

enum WeatherTyper {
    case sun
    case cloud
    case rain
    case wind(speed: Int)
    case snow
}
 
func getHaterStatus(weather: WeatherTyper) -> String? {
    switch weather {
    case .sun:
        return nil
    case .wind(let speed) where speed < 10:
        return "meh"
    case .cloud, .rain:
        return "dislike"
    case .snow, .wind:
        return "hate"
    }
}


print(getHaterStatus(weather: .wind(speed: 10)))


struct Model {
    var name: String
    var birtYear: Int
    
    func printAge() {
        "The age is \(2025 - birtYear)".log()
    }
}


var maisie = Model(name: "Maisie", birtYear: 1995)
var lisa = Model(name: "Lisa", birtYear: 1993)

maisie.name.log()
lisa.name.log()

var maisieCopy = maisie

maisieCopy.name = "Masie"
maisie.name.log()
maisieCopy.name.log()

maisie.printAge()

class CityOptionals {
    var name: String?
    var population: Int?
}


class CityDefaultValue {
    var name: String = "Kiev"
    var population: Int = 3_000_000
}

class City {
    var name: String
    var population: Int
    
    init(name: String, population: Int) {
        self.name = name
        self.population = population
    }
}


@objcMembers class Village: City {
    var isRural: Bool
    
    init(name: String, population: Int, isRural: Bool) {
        self.isRural = isRural
        super.init(name: name, population: population)
    }
    
    @objc func showName() {
        print(name)
    }
}

var hangzhou = Village(name: "Hangzhout", population: 3_742, isRural: true)
