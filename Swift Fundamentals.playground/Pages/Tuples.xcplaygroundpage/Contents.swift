/*: # Tuples*/
import Foundation
/*:Tuples allow you to return multiple values from functions.
Tuples store a fixed number of values of specific types, which is a convenient way to return multiple values from a function:*/
func getUser() -> (firstName: String, lastName: String) {
    (firstName: "Taylor", lastName: "Swift")
}

let user = getUser()
print("Name: \(user.firstName) \(user.lastName)")
/*:If you don't need all the values from the type you can destructive the tuple to pull it apart into individual values, then _ to tell Swift to ignore some:*/
let (firstName, _) = getUser()
print("Name: \(firstName)")
