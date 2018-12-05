
// Calculates which fraction of an integer array's elements are positive, negative, and zero.
//
// https://www.hackerrank.com/challenges/plus-minus

import Foundation

func plusMinus(arr: [Int]) -> Void {
    var plus = 0
    var minus = 0
    var zero = 0

    for i in arr {
        if i > 0 {
            plus += 1
        } else if i < 0 {
            minus += 1
        } else if i == 0 {
            zero += 1
        }
    }

    print(Double(Double(plus) / Double(arr.count)))
    print(Double(Double(minus) / Double(arr.count)))
    print(Double(Double(zero) / Double(arr.count)))

}
