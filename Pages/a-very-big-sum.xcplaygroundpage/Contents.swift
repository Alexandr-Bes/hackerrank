
// Returns the sum of the array's elements, some of which may be very large.
//
// https://www.hackerrank.com/challenges/a-very-big-sum/problem

import Foundation


func aVeryBigSum(ar: [Int]) -> Int {

    let array = ar
    var bigSum = 0

    for i in array {
        bigSum += i
    }
    return bigSum
}
