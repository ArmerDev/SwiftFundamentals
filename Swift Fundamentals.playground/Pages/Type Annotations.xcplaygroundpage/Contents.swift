/*: # Type Annotations*/
 import Foundation
/*:You can try to force a specific type for a new variable or constant by using type annotation, like this:*/
var score: Double = 0
/*:Without the : Double part, Swift would infer that to be an Int, but we're overriding that and saying it's a Double.
Here are some type annotions based on the types covered so far:*/
let player: String = "Roy"
var luckyNumber: Int = 12
let pi: Double = 3.141
var isEnabled: Bool = true
var albums: Array<String> = ["Red", "Fearless"]
var user: Dictionary<String, String> = ["id": "@ArmerDev"]
var books: Set<String> = Set(["The Bluest Eye", "Foundation"])
/*:Arrays and Dictionaries are so common that they have special syntax that is easier to write:*/
var albumsB: [String] = ["Red", "Fearless"]
var userB: [String: String] = ["id": "@ArmerDev"]
/*:Knowing the exact types of things is important for creating empty collections. For example, both of these create empty string arrays:*/
var teams: [String] = [String]()
var clues = [String]()
/*:Values of an enum have the same type as the enum itself, so we could write this:*/
enum UIStyle {
    case light, dark, system
}

var style: UIStyle = .light
