//DAY 002
import UIKit

// Arrays

//Constants to array
let john = "John Lennon"
let paul = "Paul McCartney"
let george = "George Harrion"
let ringo = "Ringo Starr"

//Array
let beatle = [john, paul, george, ringo]

print(beatle[1])

//Sets

//The mais difference between sets and arrays is that sets don't have any order and each value should be unique

let colors = Set(["red", "green", "blue"])
print(colors)
//If you insert a duplicate imte into a set the duplicate get ignored
let colors2 = Set(["red", "green", "blue", "red", "blue"])
print(colors2)

//Tuples

var name = (first: "Taylor", last: "Swift")

name.0
name.first

//Dictionaries
let heights = [
    "Taylor Swift": 1.78,
    "Ed Sheeran": 1.73
]

heights["Taylor Swift"]

//Dictionaries Default Value
let favoriteIceCream = [
    "Paul": "Chocolate",
    "Sophie": "Vanilla"
]

favoriteIceCream["Paul"]

favoriteIceCream["Maria"]

favoriteIceCream["Maria", default: "Unknown"]

//Empitu Collections

var teams = [String: String]()

teams["Paulo"] = "Red"

teams["Paulo"]

var results = [Int]()

results = [5]

results.first

results.append(1)

results.last

//Empity set

var words = Set<String>()
var numbers = Set<Int>()

//Empitu dictionary
var scores = Dictionary<String, Int>()
var results2 = Array<Int>()

//Enum

enum ResultEnum {
    case success
    case failure
}

let newResult = ResultEnum.failure

print(newResult)

//Enum associated values

enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}

let talking = Activity.talking(topic: "footbal")

print(talking)

//Enum raw values
enum Planet: Int {
    case mercure = 1
    case venus
    case earth
    case mars
}

print(Planet.mercure)
print(Planet.earth)
