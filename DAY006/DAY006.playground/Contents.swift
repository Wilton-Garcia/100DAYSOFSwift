//DAY006

//Creating basic closures

let driving = {
    print("I'm driving in my car")
}

driving()


//Accepting paramets in a closure

let going = { (place: String) in
    print("I'm going to \(place) in my car")
}

going("London")

//Returning values from a closure


let tripTo = { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

let message = tripTo("Lion")
print(message)


//Closure as parameters

let drivingAgain = {
    print("I'm driving in my car again")
}

func travel(action: () -> Void) {
    print("O'm getting ready to go")
    action()
    print("I arrived!")
}

travel(action: drivingAgain)

//Trailling closure sintax

travel {
    drivingAgain()
}

//Using closure as paramets when they accept parameters

func letsTravel(action: (String) -> Void) {
    print("########################")
    print("O'm getting ready to go")
    action("London")
    print("I arrived!")
}

letsTravel { (place: String) in
    print("I am going to \(place) in my car")
}
