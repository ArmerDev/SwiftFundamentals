/*: # Unrwapping Optionals with Guard*/
import Foundation
/*:Swift has a second way of unwrapping Optionals, called guard let, which is very similar to if let expect it flips things around: if let runs the code inside its braces if the optional had a value, and guard let runs the code if the optional didn't have a value.

It looks like this:*/
func printSquare(of number: Int?) {
    guard let number = number else {
        print("Missing input")
        return
    }
    
    print("\(number) x \(number) is \(number * number)")
}
/*:If you use guard to check a function's inputs are valid, Swift requires you to use return if the check fails. However, if the optional you're unwrapping has a value inside, you can use it after the guard code finished.

Tip: You can use guard with any condition, including ones that don't unwrap optionals.*/
