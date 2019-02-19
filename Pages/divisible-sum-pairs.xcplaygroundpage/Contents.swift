
// Practice > Algorithms > Implementation > Divisible Sum Pairs
// Returns the number of (i, j) pairs where i < j and a[i] + a[j] is evenly divisible by k.
//
// https://www.hackerrank.com/challenges/divisible-sum-pairs/problem
import Foundation

func divisibleSumPairs(n: Int, k: Int, ar: [Int]) -> Int {

    var numberOfDividends = 0

    for i in 0..<n-1 {
        for j in (i+1)..<n {
            if (ar[i] + ar[j]) % k == 0 {
                numberOfDividends += 1
            }
        }
    }

    return numberOfDividends
}

