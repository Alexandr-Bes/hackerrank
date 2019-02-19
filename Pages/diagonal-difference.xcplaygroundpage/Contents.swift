
// Returns the absolute difference between the sums of the matrix's two diagonals as a single integer.
//
// https://www.hackerrank.com/challenges/diagonal-difference/problem

import Foundation

func diagonalDifference(arr: [[Int]]) -> Int {

    var result = 0
    let n = arr.count

    for i in 0..<n {
        result += arr[i][i]
        result -= arr[i][(n - i) - 1]
    }
    return abs(result)

}

