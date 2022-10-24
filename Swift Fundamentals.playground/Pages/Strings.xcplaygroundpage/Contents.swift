/*: # Strings */
import Foundation
/*:Swift's strings start and end with double quotes: */
let actor = "Tom Cruise"
/*:They work great with emoji too:*/
let singer = "Taylor Swift 🎧"
/*:If you want double quotes inside your string, place a backslash before them:*/
let quote = "He tapped a sign saying \"Believe\" and walked away."
/*:If you want a string that spans multiple lines, start and end with three double quotes, like this:*/
let movie = """
    A day in
    the life of an
    Apple engineer
    """
/*:Swift provides many useful properties and methods for strings, including .coun to read how many letters it has:*/
print(actor.count)
/*:There are also hasPrefix() and hasSuffix(), which lets us know whether a string starts or ends with specific letters:*/
print(quote.hasPrefix("He"))
print(quote.hasSuffix("Away."))
//Important: Strings are case-sensitive, so this will return false.
