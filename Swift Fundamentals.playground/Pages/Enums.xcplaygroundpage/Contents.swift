/*: # Enums */
import Foundation
/*:An enum is a set of names values we can create and use to make our code more efficient and safer. For example, we could make an enum of weekdays like this:*/
enum Weekday {
    case monday, tuesday, wednesday, thursday, friday
}
/*:That calls the new enum Weekday, and provides five cases to handle the five weekdays.
We can now make instances of that enum, then assign other possible cases to it:*/
var day = Weekday.monday
day = .friday
