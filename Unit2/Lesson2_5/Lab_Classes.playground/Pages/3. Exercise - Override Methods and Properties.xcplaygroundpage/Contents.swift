/*:
## Exercise - Override Methods and Properties

 - Note: The exercises below are based on a game where a spaceship avoids obstacles in space. The ship is positioned at the bottom of a coordinate system and can only move left and right while obstacles "fall" from top to bottom. Throughout the exercises, you'll create classes to represent different types of spaceships that can be used in the game. The base class `Spaceship` and one subclass `Fighter` have been provided for you below.
 */
class Spaceship {
    var name: String = ""
    var health = 100
    var position = 0
    
    func moveLeft() {
        position -= 1
    }
    
    func moveRight() {
        position += 1
    }
    
    func wasHit() {
        health -= 5
        if health <= 0 {
            print("Sorry, your ship was hit one too many times. Do you want to play again?")
        }
    }
}

class Fighter: Spaceship {
    var weapon = ""
    var remainingFirePower = 5
    
    func fire() {
        if remainingFirePower > 0 {
            remainingFirePower -= 1
        } else {
            print("You have no more fire power.")
        }
    }
}
//:  Define a new class `ShieldedShip` that inherits from `Fighter`. Add a variable property `shieldStrength` that defaults to 25. Create a new instance of `ShieldedShip` called `defender`. Set `name` to "Defender" and `weapon` to "Cannon." Call `moveRight()` and print `position`, then call `fire()` and print `remainingFirePower`.
class ShieldedShip: Fighter {
    var shieldStrength = 25
    
    override func wasHit() {
        if shieldStrength > 0 {
            shieldStrength -= 5
            print("\(name) shield absorbed damage! Shield strength now: \(shieldStrength)")
        } else {
            super.wasHit()
        }
    }
}

let defender = ShieldedShip()
defender.name = "Defender"
defender.weapon = "Cannon"

defender.wasHit()
print("Shield strength: \(defender.shieldStrength)")
print("Health: \(defender.health)")

/*:
[Previous](@previous)  |  page 3 of 4  |  [Next: Exercise - Class Memberwise Initializers and References](@next)
 */
