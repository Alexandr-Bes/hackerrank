
// Practice > Algorithms > Implementation > Bon Appétit
// Print Bon Appetit if the bill is fairly split. Otherwise, it should print the integer amount of money that Brian owes Anna.
//
// https://www.hackerrank.com/challenges/bon-appetit/problem

import Foundation

struct Stack {
    fileprivate var array: [String] = []

    mutating func push(_ element: String) {
        array.append(element)
    }

    mutating func pop() -> String? {
        return array.popLast()
    }

    func peek() -> String? {
        return array.last
    }

}

