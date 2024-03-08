//DAY 004

//FOR LOOP
let count = 1...10

for number in count {
    print("Number is \(number)")
}

let albums = ["Red", "1989", "Reputation"]

for album in albums {
    print("\(album) is on Apple Music")
}

for _ in 1...5 {
    print("Play")
}


// WHILE

var number = 1
while number <= 20 {
    print(number)
    number += 1
}

print("Ready or not, here I come")


//REPEAT

var countLoop = 1
repeat {
    print(countLoop)
    countLoop += 1
} while countLoop <= 20
            
print("Ready or note, here I come")
            
            
//EXITING LOOP

var countDown = 10

while countDown >= 0 {
    print(countDown)
    
    if countDown == 4 {
        print("I'm boerd. Let's go now")
        break
    }
    countDown -= 1
}


//Exiting multiple loops
outerLoopLabel: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print("\(i) * \(j) is \(product)")
        
        if product == 50 {
            print("It's a bullseye!")
            break outerLoopLabel
        }
    }
}

//Skipping Items
for i in 1...10 {
    if i % 2 == 1 {
        continue
    }
    print(i)
}


//Infinite Loop
var counter = 0

while true {
    print(" ")
    counter += 1
    
    if counter == 273 {
        break
    }
}
