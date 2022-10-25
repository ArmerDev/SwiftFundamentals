/*: # Access Control*/
import Foundation
/*:Swift has several options for access control inside structs, but four are the most common:
 * Use private for "don't let anything outside the struct use this."
 * Use private(set) for "anything outside the struct can read this, but don't let them change it"
 * Use fileprivate for "don't let anything outside the current file use this."
 * Use public for "let anyone, anywhere use this."
For example:*/
struct BankAccount {
    private(set) var funds = 0
    
    mutating func deposit(amount: Int) {
        funds += amount
    }
    
    mutating func withdraw(amount: Int) -> Bool {
        if funds > amount {
            funds -= amount
            return true
        } else {
            return false
        }
    }
}
/*:Becuase we used private(set), reading funds from outside the struct is fine but writing isn't possible.*/
