/*: # Protocol Extensions*/
import Foundation
/*:Protocol extensions extend a whole protocol to add computed properties and method implementations, so any types conforming to that protocol get them.

For example, Array, Dictionary, and Set all conform to the Collection protocol, so we can add a computed property to all three of them like this:*/
extension Collection {
    var isNotEmpty: Bool {
        isEmpty == false
    }
}
/*:Now we can put it to use:*/
let guests = ["Mario", "Luigi", "Peach"]

if guests.isNotEmpty {
    print("Guest count: \(guests.count)")
}
/*:This approach means we can list required methods in a protocol, then add default implementations of those inside a protocol extension. All conforming types then get to use those default implementations, or provide their own as needed.*/
