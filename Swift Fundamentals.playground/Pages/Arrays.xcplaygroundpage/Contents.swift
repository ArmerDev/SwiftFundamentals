/*: # Arrays*/
import Foundation
/*:You can group items into an array like this:*/
var colors = ["Red", "Green", "Blue"]
let numbers = [4, 8, 15, 16]
var readings = [0.1, 0.5, 0.8]
/*:Each of those hold different kinds of data: one strings, one integers, and one decimals. When we read data from arrays we will get the appropriate type back - a String, an Int, or a Double*/
print(colors[0])
print(readings[2])
/*:Tip: Make sure an item exists at the index you're asking for, otherwise your code will crash - your app will just stop working.*/
/*:If your app ray is variable, you can use append() to add new items:*/
colors.append("Tartan")
/*:The type of data you add must match whatever was already in there.*/
/*:Arrays have useful functionality, suc has .count to read how many items are in an array, or remove(at:) to remove one item at a specific index.*/
colors.remove(at: 0)
print(colors.count)
/*:You can check whether an array contains a particular item by using contains(), like this:*/
print(colors.contains("Octarine"))
