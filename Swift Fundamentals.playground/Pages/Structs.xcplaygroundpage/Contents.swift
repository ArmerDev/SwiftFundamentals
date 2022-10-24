/*: # Structs*/
import Foundation
/*:Structs let us create our own custom data types, complete with their own properties and methods:*/
struct Album {
    let title: String
    let artist: String
    var isReleased = true
    
    func printSummary() {
        print("\(title) by \(artist)")
    }
}

let red = Album(title: "Red", artist: "Taylor Swift")
print(red.title)
red.printSummary()
/*:When we create instances of Structs we do so using an initialiser - Swift lets us treat our struct like a function, passing in parameters for each of its properties. It silently generates this memeberwise initialiser based of the struct's properties.
If you want to have a struct's method change one of its properties, mark it as mutating:*/
struct AlbumB {
    let title: String
    let artist: String
    var isReleased = true
    
    mutating func removeFromSale() {
        isReleased = false
    }
}
