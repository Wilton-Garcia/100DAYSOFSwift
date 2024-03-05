import UIKit

//Creating variable with var word
var favoriteShow = "The office"
favoriteShow = "How I Meet Your Mother"
favoriteShow = "Silon Valley"


//Creating a Integer
var age = 29

//Creating a Inter for big numbers
var billion = 1_000_000_000

//Creating a String
var text = "Hello, I'am a iOS Engineer"

//Creating a double
var pi = 3.14

//Creating a boolean
var awesome = true

//Creating a multi-line string
var bigText = """
This string
has
multiple lines
"""

print(bigText)

//Using \ the breakline don't happen in code result
var anotheBigText = """
This is a \
formated \
multi-line \
string
"""

print(anotheBigText)

//Creating string interpolation
var score = 100
var scoreText = "Your score was \(score)"
var result = "The test result are? \(scoreText)"

//Creating a constant
let taylor = "Swift"

//Type annotations
let str: String = "This is a string"
let year: Int = 1995
let height: Double = 1.80
let pass = true
