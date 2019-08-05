/*
    Practice > Algorithms > Implementation > Sherlock and Squares

 Complete the squares function in the editor below. It should return an integer representing the number of square integers in the inclusive range from a to b.

 squares has the following parameter(s):
    a: an integer, the lower range boundary
    b: an integer, the uppere range boundary

    https://www.hackerrank.com/challenges/sherlock-and-squares/problem
 */

import Foundation

func squares(a: Int, b: Int) -> Int {
    var results = [Int]()

    for num in a...b {
        let double = Double(num)
        if Int(double) == Int(double.squareRoot()) * Int(double.squareRoot()) {
            results.append(num)
        }
    }
    return results.count
}
squares(a: 17, b: 25)

// Second Better Version
func squares1(a: Int, b: Int) -> Int {
    var i = 1
    var result = [Int]()

    while (i*i <= b) {
        if i*i >= a {
            result.append(i*i)
        }
        i += 1
    }
    return result.count
}

squares1(a: 17, b: 36)
