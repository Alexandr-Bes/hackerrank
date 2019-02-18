
// Returns the sum of the array's elements as a single integer.
//
// https://www.hackerrank.com/challenges/simple-array-sum/problem

import Foundation

func simpleArraySum(ar: [Int]) -> Int {
    let array = ar
    var totalSum = 0

    for i in array {
        totalSum += i
    }
    return totalSum
}

