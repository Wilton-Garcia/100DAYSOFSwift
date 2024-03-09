//DAY005

//Functions
func printHelp() {
    let message = """
    Welcome to My App

Run tis app inside a directory of images and
MyApp will resize them all into thummnails

"""
    
    print(message)
}

printHelp()

//Accepting Parameters

func square(number: Int){
    print(number * number)
}

square(number: 8)

//Returning value

func cubic(number: Int) -> Int {
    return number * number * number
}

let result = cubic(number: 3)
print(result)

//Parameter Labels
func sayHello(to name: String){
    print("Hello \(name)")
}

sayHello(to: "Taylor")

//Omitting Parameters Labels

func greet(_ person: String){
    print("Hello. \(person)")
}

greet("Taylor")

//Default paramaeters
func greet(_ person: String, nicely: Bool = false){
    if nicely == true {
        print("Hello \(person)")
    } else {
        print("Oh no, it's \(person) again")
    }
}

greet("Taylor")
greet("Tayloer", nicely: false)

//Variadic functions
print("Haters", "gonna", "hate")

func variadicSquare(numbers: Int...) {
    for number in numbers {
        print("\(number) square is \(number * number)")
    }
}

variadicSquare(numbers: 1,2,3,4,5,6,7,8,9,10)

//Writing thowing functions

enum PassswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PassswordError.obvious
    }
    return true
}

//Runing throwing functions

do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("Yout can't use that password")
}
