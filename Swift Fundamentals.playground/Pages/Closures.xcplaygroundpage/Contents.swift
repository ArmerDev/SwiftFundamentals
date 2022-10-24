/*: # Closures*/
import Foundation
/*:You can assign functionality directly to a constant or variable like this:*/
let sayHello = {
    print("Hi there!")
}

sayHello()

/*:In that code, sayHello is a closure - a chunk of code we can pass around and call whenever we want. If you want the closure to accept parameters, they must be written inside the braces:*/
let sayHelloTo = { (name: String) -> String in
    "Hi \(name)!"
}

/*:The in is used to mark the end of the parameters and return type - everything after that is the body of the closure itself.

Closures are used extensively in Swift. For example, there's an array method called filter() that runs all elements of the array through a test, and any that return true for the test get returned in a new array.

We can provide that test using a closure, so we could filter an array to include only names that begin with T:*/
let team = ["Gloria", "Suzanne", "Tiffany", "Tasha", "Lucy", "Vicky"]

let onlyT = team.filter({ (name: String) -> Bool in
    return name.hasPrefix("T")
})
/*:Inside the closure we list the parameter filter() passes us, which is a string from the array. We also say that our closure returns a Boolean, then mark the start of the closure's code ny using in - after that, everything else is normal function code.*/
