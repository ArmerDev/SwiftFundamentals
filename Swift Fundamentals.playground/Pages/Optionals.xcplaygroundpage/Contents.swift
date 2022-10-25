/*: # Optionals*/
import Foundation
/*:Optionals represent the absence of data - for example, they distinguish between an integer having the value 0, and having no value at all.

To see optionals in action, think about this code:*/
let opposites = [
    "Mario": "Wario",
    "Luigi": "Waluigi"
    ]

let peachOpposite = opposites["Peach"]
/*:That attempts to read the value attached to the key "Peach", which doesn't exist, so this can't be a regular string. Swift's solution is called optionals, which means data that might be present or might not be present.

An optional string might have a string waiting inside for us, or there might be nothing at all - a special value called nil, that means "no value". Any kind of data can be optional, including Int, Double, and Bool, as well as instances of enums, structs, and classes.

Swift won't let us use optional data directly, because it might be empty. That means we need to unwrap the optional to use it - we need to look inside to see if there's a value, and, if there is, take it out and use it.

Swift gives us several ways of unwrapping Optionals, but the one you'll see most looks like this:*/
if let marioOpposite = opposites["Mario"] {
    print("Mario's opposite it \(marioOpposite)")
}
/*:That reads the optional value from the dictionary, and if it has a string inside, it gets unwrapped - the string inside gets placed into the marioOpposite constant, and isn't optional any more. Because we were able to unwrap the optional, the condition is a success so the print() code is run.*/
