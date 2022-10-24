/*: # Extensions*/
import Foundation
/*:Extensions let us add functionality to any type. For example, Swift's strings have a method for trimming whitespace and new lines, but it's quite long so we could turn it into an extension:*/
import Foundation
/*:Foundation neded to get the trimmingCharacters method for Strings.*/
extension String {
    func trimmed() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
}

var quote = "     The truth is rarely pure and never simple      "
let trimmed = quote.trimmed()

print(quote)
print(trimmed)
/*:If you want to change a value directly rather than returning a new value, mark your method as mutating like this:*/
extension String {
    mutating func trim() {
        self = self.trimmed()
    }
}

var quoteB = "     The truth is rarely pure and never simple      "
quoteB.trim()
/*:Extensions can also add computed properties to types, like this one:*/
extension String {
    var lines: [String] {
        self.components(separatedBy: .newlines)
    }
}
/*:The components(seperatedBy:) method splits a string into an array of strings using a boundary of our choosing, which in this case is new lines.

We can now use that property with all strings:*/
var sortingHatText = """
    ‘Hmm,’ said a small voice in his ear. ‘Difficult. Very difficult.
    Plenty of courage, I see. Not a bad mind, either. There’s talent, oh
    my goodness, yes - and a nice thirst to prove yourself, now that’s
    interesting ... So where shall I put you?’
    """

print(sortingHatText.lines.count)
