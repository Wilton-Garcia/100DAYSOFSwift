//DAY 003

import UIKit

var greeting = "Hello, playground"

//Arithmetic operators

let firstScore = 12
let secondScore = 4

let total = firstScore + secondScore
let difference = firstScore - secondScore
let product = firstScore * secondScore
let divided = firstScore / secondScore

let remainder = 13 % secondScore

//Operator overloading

let meaningOfLife = 42
let doubleMeaning = 42 + 42

let fakers = "Fakers gonna "
let action = fakers + "fake"

let firstHalf = ["John", "Paul"]
let secondHalf = ["George", "Ringo"]
let beatles = firstHalf + secondHalf


//Compound Operators

var score = 05
score -= 5

var quote = "The rain in Spain falls mainly in the "
quote += "Spaniards"

//Comparasion Operators
let firstPoints = 6
let secondPoints = 4

firstPoints == secondPoints
firstPoints != secondPoints
firstPoints < secondPoints
firstPoints >= secondPoints

"Taylor" <= "Swift"

"A" < "B"

//Conditions

let firstCard = 11
let secondCard = 10

if firstCard + secondCard == 21 {
    print("Blackjack")
}


if firstCard + secondCard == 21 {
    print("Blackjack")
} else {
    print("Regular cards")
}

if firstCard + secondCard == 2 {
    print("Aces - lucky!")
} else if firstCard + secondCard == 21 {
    print("Blackjack")
} else {
    print("Regular cards")
}

//Combining conditions

let age1 = 12
let age2 = 21

if age1 > 18 && age2 > 18 {
    print("Both are over 18")
}

if age1 > 18 || age2 > 18 {
    print("At least on is over 18")
}

// The ternary operator
let firstNumber = 11
let secondNumber = 10

print(firstCard == secondCard ? "Cards are the same" : "Cards are differents")

//Switch

let weather = "sunny"

switch weather {
case "rain":
    print("Bring umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
default:
    print("enjoy your day")
}


switch weather {
case "rain":
    print("Bring umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
    fallthrough // Continue for the next case
default:
    print("enjoy your day")
}


//Range operators
let myScore = 95

switch score {
case 0..<50:
    print("You failed badly")
case 50..<85:
    print("You did ok")
default:
    print("You did great!")
}
