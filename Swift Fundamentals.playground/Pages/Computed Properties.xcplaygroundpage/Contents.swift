/*: # Computed Properties*/
import Foundation
/*:A computed property calculates its value every time it's accessed. For example, we could write an Employee struct that tracks how many days of vacation remained for that employee:*/
struct Employee {
    let name: String
    var vacationAllocated = 14
    var vacationTaken = 0
    
    var vacationremaining: Int {
        vacationAllocated - vacationTaken
    }
}
/*:To be able to write to vacationRemaining we need to provide both a getter and a setter:*/
struct EmployeeB {
    let name: String
    var vacationAllocated = 14
    var vacationTaken = 0
    
    var vacationremaining: Int {
        get {
            vacationAllocated - vacationTaken
        }
        
        set {
            vacationAllocated = vacationTaken + newValue
        }
    }
}
/*:newValue is provided by Swift, and stores whatever value the user was assigning to the property.*/
