
// Practice > Algorithms > Implementation > Utopian Tree
// Complete the utopianTree function in the editor below. It should return the integer height of the tree after the input number of growth cycles.
//
// https://www.hackerrank.com/challenges/utopian-tree/problem

import Foundation

func utopianTree(n: Int) -> Int {
    var count = 1

    if n == 0 {
        print(1)
        return 1
    } else {
        for i in 1...n {
            i % 2 == 0 ? (count += 1) : (count *= 2)
        }
    }
    print(count)
    return count
}
