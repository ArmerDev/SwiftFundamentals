/*: # Protocols*/
import Foundation
/*:Protocols define functionality we expect a data type to support, and Swift ensures our code follows those rules.

For example, we could define a Vehicle protocol like this:*/
protocol Vehicle {
    func estimateTime(for distance: Int) -> Int
    func travel(distance: Int)
}
/*:That lists the required methods for this protocol to work, but doesn't contain any code - we're specifying only method names, parameters, and return types.

Once you have a protocol you can make data types conform to it by implementing the required functionality. For example, we could make a Car struct that conforms to Vehicle:*/
struct Car: Vehicle {
    func estimateTime(for distance: Int) -> Int {
        distance / 50
    }
    
    func travel(distance: Int) {
        print("I'm driving \(distance) miles.")
    }
}
/*:All the methods listed in Vehicle must exist exactly in Car, with the same name, parameters, and return types.

Now you can write a function that accepts any kind of type that conforms to Vehicle, because Swift knows it implements both estimateTime() and travel():*/
func commute(distance: Int, using vehicle: Vehicle) {
    if vehicle.estimateTime(for: distance) > 100 {
        print("Too slow!")
    } else {
        vehicle.travel(distance: distance)
    }
}

let car = Car()
commute(distance: 100, using: car)
/*:Protocols can also require properties, so we could require properties for how many seats vehicles have and how many passengers they currently have:*/
protocol VehicleB {
    var name: String { get }
    var currentPassengers: Int { get set }
    func estimateTime(for distance: Int) -> Int
    func travel(distance: Int)
}
/*:That adds two properties: one marked with get that might be a constant or computed property, and one marked with get set that might be a variable or a computed property with a getter and a setter.

Now all conforming types must add implementations of those two properties, like this for Car:*/
struct CarB: VehicleB {
    let name = "Car"
    var currentPassengers = 1
    
    func estimateTime(for distance: Int) -> Int {
        distance / 50
    }
    
    func travel(distance: Int) {
        print("I'm driving \(distance) miles.")
    }
}

/*:**Tip:** You can conform to as many protocols as you need, just by listing them separated with a comma.*/
