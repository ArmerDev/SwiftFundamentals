/*: # Conditions*/
import Foundation
/*:User if, else, and else if statements to check a condition and run some code as appropriate:*/
let age = 16

if age < 12 {
    print("You can't vote")
} else if age < 18 {
    print("You can vote soon.")
} else {
    print("You can vote now.")
}

/*:We can use && to combine two conditions, and the whole condition will only be true if the two parts inside are true:*/
let temp = 26

if temp > 20 && temp < 30 {
    print("It's a nice day.")
}
/*:Alternatively, || will make a condition be true if either subcondition is true.*/
