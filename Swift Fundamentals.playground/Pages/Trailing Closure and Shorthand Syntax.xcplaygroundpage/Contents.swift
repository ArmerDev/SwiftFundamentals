/*: # Trailing Closures and Shorthand Syntax*/
import Foundation
/*:Swift has a few tricks up its sleeve to make closures easier to read. Here's some code that filters an array to include only names beginning with "T":*/
let team = ["Gloria", "Suzanne", "Tiffany", "Tasha", "Lucy", "Vicky"]

let onlyT = team.filter({ (name: String) -> Bool in
    return name.hasPrefix("T")
})

print(onlyT)

/*:Immediately you can see that the body of the closure has just a single line of code, so we can remove return:*/
let onlyS = team.filter({ (name: String) -> Bool in
    name.hasPrefix("S")
})
/*:filter() must be given a function that accepts one item from its array, and return true if it should be in the returned array.

Because the function we pass in must behave like that, we don't need to specify the types in our closure. So, we can rewrite the code to this:*/
let onlyG = team.filter({ name in
    name.hasPrefix("G")
})
/*:We can go further using special syntax called trailing closure syntax, which looks like this:*/
let onlyL = team.filter { name in
    name.hasPrefix("L")
}
/*:Finally, Swift can provide short parameter names for us so we don't even write name in anymore, and instead rely on a specially named value provided for us: $0:*/
let onlyV = team.filter {
    $0.hasPrefix("V")
}
