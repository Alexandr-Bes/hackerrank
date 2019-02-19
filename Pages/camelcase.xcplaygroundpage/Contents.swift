
// Practice > Algorithms > String > CamelCase
// Returns the number of words in string -s.
//
// https://www.hackerrank.com/challenges/camelcase/problem

import Foundation

func camelcase(s: String) -> Int {

    var numberOfWords = 1

    for ch in s {
        if String(ch) == String(ch).uppercased() {
            numberOfWords += 1
        }
    }

    return numberOfWords
}



