/*: # Loops*/
import Foundation
/*: ## For Loops*/
/*:Swifts for loops run some code for every item in a collection, or in a custom range. For example:*/
let platforms = ["iOS", "iPadOS", "macOS", "tvOS", "watchOS"]

for os in platforms {
    print("Swift works on \(os)")
}
/*:You can also loop over a range of numbers:*/
for i in 1...12 {
    print("5 x \(i) is \(5 * i)")
}
/*:1...12 contains the values 1 through 12 inclusively. If you want to exclude the final number, use ..< instead:*/
for i in 1..<13 {
    print("5 x \(i) is \(5 * i)")
}
/*:**Tip:** If you don't need the loop variable, use _:*/
var lyric = "Haters gonna"

for _ in 1...5 {
    lyric += " hate"
}

print(lyric)
/*: ## While loops*/
/*:There are also while loops, which execute their loop body until a condition is false, like this:*/
var count = 10

while count > 0 {
    print("\(count)...")
    count -= 1
}

print("Go!")
/*:You can use continue to skip the current loop iteration and proceed to the following one:*/
let files = ["me.jpg", "work.txt", "sophie.jpg"]

for file in files {
    if file.hasSuffix(".jpg") == false {
        continue
    }
    
    print("Found picture: \(file)")
}
/*:Alternatively, use break to exit a loop and skip all remaining iterations.*/
