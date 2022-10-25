/*: # Sets */
import Foundation
/*:Sets are similar to arrays, except you can't add duplicate items, and they don't store items in a particular order.
This makes a set of numbers:*/
var numbers = Set([1, 1, 3, 5, 7])
print(numbers)
/*:Remember, the set will ignore duplicate values, and it won't remember the order used in the array.
Adding items to a set is done by calling its insert() method, like this:*/
numbers.insert(10)
/*:Sets have one big advantage over arrays: using contains() on a set is effectively instant no matter how many items the set contains - even a set with 10,000,000 items will respond instantly.*/
