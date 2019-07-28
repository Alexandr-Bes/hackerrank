/*  
 Practice > Algorithms > Implementation > Electronics Shop

 Complete the getMoneySpent function in the editor below. It should return the maximum total price for the two items within Monica's budget, or -1 if she cannot afford both items.

 getMoneySpent has the following parameter(s):
    - keyboards: an array of integers representing keyboard prices
    - drives: an array of integers representing drive prices
    - b: the units of currency in Monica's budget

    https://www.hackerrank.com/challenges/electronics-shop/problem
 */

import Foundation

func getMoneySpent(keyboards: [Int], drives: [Int], b: Int) -> Int {
    var finalArr = [Int]()

    for key in keyboards {
        for drive in drives {
            if (key + drive) <= b {
                finalArr.append(key + drive)
            }
        }
    }
    if finalArr.isEmpty {
        return -1
    } else {
        guard let max = finalArr.max() else { return -1 }
        return max
    }
}
