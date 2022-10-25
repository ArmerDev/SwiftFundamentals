/*: # Static Properies and Methods*/
import Foundation
/*:Swift supports static properties and methods, allowing you to add a property or method directly to the struct itself rather than to one instance of the struct:*/
struct AppData {
    static let version = "1.3 beta 2"
    static let settings = "settings.json"
}
/*:Using this approach, everywhere we need to check or display something like the app's version number we can read AppData.version*/
print("Current version: \(AppData.version)")
