
// Prints two space-separated long integers denoting the respective minimum and maximum values that can be calculated by summing exactly four of the five integers.
//
// https://www.hackerrank.com/challenges/mini-max-sum/problem

import Foundation

func miniMaxSum(arr: [Int]) -> Void {

    var sum = 0
    let min = arr.min()!
    let max = arr.max()!

    for i in arr.sorted() {
        sum += i
    }
    print("\(sum - max) \(sum - min)")
}
