/*: # Property Observers*/
import Foundation
/*:Property observers are pieces of code that run when properties change: didSet runs when the property just changes, and willSet runs before the property changed.

 We could demonstrate didSet by making a Game struct print a message when the score changes:*/
struct Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}

var game = Game()
game.score += 10
game.score -= 3
