/*: # Default Values for Parameters*/
import Foundation
/*:We can provide default parameter values by writing an equals after the type then providing a value, like this:*/
func greet(_ person: String, formal: Bool = false) {
    if formal {
        print("Welcome, \(person)!")
    } else {
        print("Hi, \(person)!")
    }
}
/*:Now we can call greet() in two ways:*/
greet("Tim", formal: true)
greet("Taylor")


