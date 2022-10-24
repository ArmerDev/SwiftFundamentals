/*: # Switch Statements*/
import Foundation
/*:Swift lets us check a value against multiple conditions using switch/case syntax, like this:*/
enum Weather {
    case sun, rain, wind
}

let forecast = Weather.sun

switch forecast {
case .sun:
    print("A nice day.")
case .rain:
    print("Pack an umbrella.")
default:
    print("Should be okay.")
}

/*:Switch statements must be exhaustive: all possible values must be handles so you can't miss one by accident.*/
