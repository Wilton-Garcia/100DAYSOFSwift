import UIKit

var greeting = "Hello, playground"

extension String {
    func log() {
        print(self)
    }
}

struct Person {
    var name: String
    var birthYear: Int
    
    init(name: String, birthYear: Int) {
        self.name = name
        self.birthYear = birthYear
    }
    
    func showAgeIn2025() {
        print("The age in 2025 is \(2025 - birthYear)")
    }
}

let maisie = Person(name: "Maisie", birthYear: 2008)
let lisa = Person(name: "Lisa", birthYear: 2006)

maisie.showAgeIn2025()
lisa.showAgeIn2025()

struct Character {
    var weapon: String {
        willSet {
            "Will change weapon from \(weapon) to \(newValue)".log()
        }
        
        didSet {
            "Now this character is using \(weapon) and leftbehind \(oldValue)".log()
        }
    }
}

var warrior = Character(weapon: "Axe")
warrior.weapon = "Sword"


struct Money {
    var humanValue: Int
    
    var elficValue: Int {
        get {
            humanValue * 100
        }
    }
    
    var orcValye: Int {
        humanValue / 10
    }
}

let prize = Money(humanValue: 4050)

print(prize.humanValue)
print(prize.elficValue)
print(prize.orcValye)

struct game {
    static var price: Double = 69.00
    var name: String
}


var GTA = game(name: "Grand Theft Auto")

print(game.price)

struct Singer {
    public var name: String
    internal var nexrShow: String
    private var salary: Int
    fileprivate var avaliable: Bool
    
    init(name: String, nexrShow: String, salary: Int, avaliable: Bool) {
        self.name = name
        self.nexrShow = nexrShow
        self.salary = salary
        self.avaliable = avaliable
    }
    
}


class VideoGame {
    var name: String
    var score: Int
    
    init(name: String, score: Int) {
        self.name = name
        self.score = score
    }
    
    func showScore() {
        "The score for this games is \(score)".log()
    }
}

class Remaster: VideoGame {
    var sameFiles: Bool
    
    init(name:String, score: Int, sameFiles: Bool) {
        self.sameFiles = sameFiles
        super.init(name: name, score: score)
    }
}

class Remake: VideoGame {
    var newEngine: String
    
    init(name: String, score: Int, newEngine: String) {
        self.newEngine = newEngine
        super.init(name: name, score: score)
    }
    
    override func showScore() {
        "The score for \(name) games is \(score + 1) with a bonus remake".log()
    }
}

var finalfantasyVII = VideoGame(name: "Final Fantasy VII", score: 9)
var finalFantasyVIIRemaster = Remaster(name: "Final Fantasy VII Remaster", score: 8, sameFiles: true)
var finalFantasyVIIRemake = Remake(name: "Final Fantasy VII Remake", score: 8, newEngine: "Unreal 5")

var mygames: [VideoGame] = [finalfantasyVII, finalFantasyVIIRemaster, finalFantasyVIIRemake]

for g in mygames {
    g.showScore()
    
    if let remake = g as? Remake {
        remake.newEngine.log()
    } else if let remaster = g as? Remake {
        "Just a remaster".log()
    }
}

var marioHD = Remaster(name: "Mario HD", score: 10, sameFiles: true)
var zeldaHD = Remaster(name: "Zelda HD", score: 8, sameFiles: true)
var metroidHD = Remaster(name: "Metroid HD", score: 10, sameFiles: false)

var hdCollection: [VideoGame] = [marioHD, zeldaHD, metroidHD]

for hdgame in hdCollection as? [Remaster] ?? [Remaster]() {
    hdgame.name.log()
}

for hdgame in hdCollection as! [Remaster] {
    hdgame.name.log()
}


let number = 5
let text = String(number)
text.log()

