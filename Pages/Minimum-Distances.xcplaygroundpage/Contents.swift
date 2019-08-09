/*
    Practice > Algorithms > Implementation > Minimum Distances

    Complete the minimumDistances function in the editor below. It should return the minimum distance between any two matching elements.

    minimumDistances has the following parameter(s):
        a: an array of integers

    https://www.hackerrank.com/challenges/minimum-distances/problem
 */

import Foundation

func minimumDistances(a: [Int]) -> Int {
    let set = Set(a)
    var bool = true
    var resArr = [Int]()

    for i in set {
        for index in 0...a.count-1 {
            if i == a[index] {
                bool = !bool
                if bool {
                    guard let first = a.firstIndex(of: i) else { return -1 }
                    let last = index
                    resArr.append(last - first)
                }
            }
        }
        bool = true
    }

    if resArr.isEmpty {
        return -1
    } else {
        return resArr.min()!
    }
}

minimumDistances(a: [7, 1, 3, 4, 1, 7])
