/*: # Nil Coalescing*/
import Foundation
/*:Swift has a third way of unwrapping optionals, called the nil coalescing operator - it unwraps an optional and provides a default value if the optional was empty:*/
let tvShows = ["Archer", "Babylon 5", "Ted Lasso"]
let favourite = tvShows.randomElement() ?? "None"
/*:The nil coalescing operator is useful in many places optionals are created. For example, creating an integer from a string return an optional Int? because the conversation might ahve failed. here we can use nil coalescing to provide a default value:*/
let input = ""
let number = Int(input) ?? 0
print(number)
