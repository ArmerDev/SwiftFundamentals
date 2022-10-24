/*: # Handling Errors in Functions*/
import Foundation
/*:To handle errors in functions you need to tell Swift which errors can happen, write a function that can throw errors, then call it and handle any problems.

First, define the errors that can occur:*/
enum PasswordError: Error {
    case short, obvious
}
/*:Next, write a function that can throw errors. This is done by placing throws into the function's type, then by using throw to trigger specific errors:*/
func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {
        throw PasswordError.short
    }
    
    if password == "12345" {
        throw PasswordError.obvious
    }
    
    if password.count < 10 {
        return "OK"
    } else {
        return "Good"
    }
}
/*:Now call the throwing function by starting a do black, calling the function using try, then catch errors that occur:*/
let myPassword = "12345"

do {
    let result = try checkPassword(myPassword)
    print("Rating: \(result)")
} catch PasswordError.obvious {
    print("I have the same combination on my luggage!")
} catch {
    print("There was an error.")
}
/*:When it comes to catching errors, you must always have a catch block that can handle every kind of error.*/
