/*: # Customising Parameter Labels*/
import Foundation
/*:If you don't want to pass a parameter's name when calling a function, place an underscore before it:*/
func isUppercase(_ string: String) -> Bool {
    string == string.uppercased()
}

let exampleString = "HELLO WORLD"
let result = isUppercase(exampleString)
/*:An alternative is to write a second name before the first: one to use externally, and one internally:*/
func printTimesTables(for number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(for: 5)
/*:In the above code, for is used externally, and number is used internally.*/
