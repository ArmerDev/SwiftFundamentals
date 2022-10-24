/*: # Classes*/
import Foundation
/*:Classes let us create custom data types, and are different from structs in five ways.

The first different is that we can create classes by inheriting functionality from other classes:*/
class Employee {
    let hours: Int
    
    init(hours: Int) {
        self.hours = hours
    }
    
    func printSummary() {
        print("I work \(hours) hours a day.")
    }
}

class Developer: Employee {
    func work() {
        print("I'm coding for \(hours) hours a day.")
    }
}

let novall = Developer(hours: 8)
novall.work()
novall.printSummary()
/*:If a child class wants to change a method from a parent class, it must use override:*/
class Designer: Employee {
    override func printSummary() {
        print("I spend \(hours) hours a day drawing out design ideas.")
    }
}
/*:The second difference is that initialisers are more tricky with classes. There's a lot of complexity here, but there are three key points:
 * Swift won't generate a memberwise initialiser for classes.
 * If a child class has custom initialisers, it must always call the parent's initialiser after it has finished.
 * If a subclass doesn't have any initialisers, it automatically inherits the initialisers of its parent class.
For example:*/
class Vehicle {
    let isElectric: Bool
    
    init(isElectric: Bool) {
        self.isElectric = isElectric
         }
}

class Car: Vehicle {
    let isConvertible: Bool
    init(isElectric: Bool, isConvertible: Bool) {
        self.isConvertible = isConvertible
        super.init(isElectric: isElectric)
    }
}

/*:super allows us to call up to methods that belong to our parent class, such as its initialiser.

 The third difference is that all copies of a class instance share their data, meaning that changes you make to one will automatically change other copies.

For example:*/
class Singer {
    var name = "Adele"
}

var singer1 = Singer()
var singer2 = singer1
singer2.name = "Justin"
print(singer1.name)
print(singer2.name)
/*:That will print "Justin" for both - even though we only changed one of them, the other also changed. In comparison, struct copies don't share their data.

The fourth difference is that classes can have a deinitialiser that gets called when the last reference to an object is destroyed.

So, we could create a class that prints a message when it's created and destroyed:*/
class User {
    let id: Int
    
    init(id: Int) {
        self.id = id
        print("User \(id): I'm alive!")
    }
    
    deinit {
        print("User \(id): I'm dead!")
    }
}

for i in 1...3 {
    let user = User(id: i)
    print("User \(user.id): I'm in control!")
}
/*:The final difference is that classes let us change variable properties even when the class itself is constant:*/
class UserB {
    var name = "Paul"
}

let user = UserB()
user.name = "Taylor"
print(user.name)
/*:As a result of this, classes don't need the mutating keyword with methods that change their data.*/
