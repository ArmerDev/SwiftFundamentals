/*: # Integers */
import Foundation
/*:Swift stores whole numbers using the type Int, which supports a range of standard mathematical operators:*/
let score = 10
let higherScore = score + 10
let halvedScore = score / 2
/*:It also supports compound assignment operators that modify variables in place:*/
var counter = 10
counter += 5
/*:Integers come with their own useful functionality, such as the isMultiple(of:) method:*/
let number = 120
print(number.isMultiple(of: 3))
/*:You can also make random integers in a specific range, like this:*/
let id = Int.random(in: 1...1000)
