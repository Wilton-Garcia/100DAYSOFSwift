//DAY007

//Using closure as paramets when they accept parameters

func letsTravel(action: (String) -> Void) {
    print("########################")
    print("O'm getting ready to go")
    action("London")
    print("I arrived!")
}

letsTravel() { (place: String) in
    print("I am going to \(place) in my car")
}

func travel(action: (String) -> String) {
    print("I'm gettin ready to go")
    let description = action("London")
    print(description)
    print("I arrived!")
}

travel { (place: String) -> String in
    return "I'm going to \(place) in my car"
    
}


travel { place in
     "I'm going to \(place) in my car"
}

travel {
     "I'm going to \($0) in my car"
}


func travelSpeed(action: (String, Int) -> String) {
    print("I'm gettin ready to go")
    let description = action("London", 60)
    print(description)
    print("I arrived!")
}

travelSpeed { des, spe in
    "I'm going to \(des) ar \(spe) km per hour"
}

func trip() -> (String) -> Void {
    return {
        print("I'M GOING TO \($0)")
    }
}

let result = trip()
result("London")


//Not recpmmended
let result2 = trip()("London")


//CAPTURING VALUES
func turne() -> (String) -> Void {
    var counter = 1
    return {
        print("I'M GOING TO \($0)   \(counter)" )
        counter += 1
    }
}

let r = turne()
r("Paris")
r("London")
r("Berlin")
