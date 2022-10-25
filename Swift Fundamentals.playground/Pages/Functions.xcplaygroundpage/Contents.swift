/*: # Functions*/
import Foundation
/*:To create a new function, write func followed by your function's name, then add parameters inside parentheses:*/
func printTimesTables(number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(number: 5)
/*:We need to write number: 5 at the call site, because the parameter name is part of the function call.
 
To return data from a function, tell Swift what type it is, then use the return keyboard to send it back. For example, this returns a dice roll:*/
func rollDice() -> Int {
    return Int.random(in: 1...6)
}

let result = rollDice()
print(result)

/*:If your function contains only a single line of code, you can remove the return keyword:*/
func rollDiceB() -> Int {
    Int.random(in: 1...6)
}
