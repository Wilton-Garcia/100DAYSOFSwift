import UIKit


//Variables
var name: String = "Maisie"
var age: Int = 12
var active: Bool = true
var score: Double = 95.621
var height: Float = 1.39

var a = 10
a = a + 1
a = a - 1
a = a * 1
a = a / 1
a += 1
a -= 1

var b = 1.1
var c = 2.2
var d = b + c

var name1 = "Lisa"
var names = name1 + " & " + name

10 % 2
a > 4
a < 3
a >= 7
a <= 4
a == 10

var michelle = "Michelle"

print("This person is \(michelle)")

var ages = [10 ,12, 9, 6]
var persons = ["Lisa", "Maisie", "Michelle", "Viola"]

print(persons[2])
print(ages[2])

print(type(of: persons))


persons[0] = "Milla"

var stars = ["Naomi":"Japan", "Maisie":"Russia"]

print(stars["Naomi"])


var carrer = "Model"

if carrer == "Model" {
    print("You are a Star")
} else if carrer == "Doctor" {
    print("You are smart")
} else {
    print("It's ok")
}

if ages.count == 4 && persons.count == 4 {
    print("Valid")
}


if !stars.isEmpty || !persons.isEmpty {
    print("You have data")
}

for i in 1...10 {
    print("[\(i)]")
}

for person in persons {
    print("Person name is \(person)")
}


for i in 0..<persons.count {
    print("Person index is \(i)")
}


while a > 0 {
    print("The value of a is \(a)")
    a -= 1
}

let selector = 3

switch selector {
case 0:
    print("Nothing")
case 1:
    print("Better than nothing")
case 2:
    print("Almost")
case 3:
    print("Congratulations, you found \(persons[3])")
default:
    print("Try again")

}
