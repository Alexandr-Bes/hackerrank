
/*
 Practice > Algorithms > Implementation > Equalize the Array

 Function Description:

 Complete the equalizeArray function in the editor below. It must return an integer that denotes the minimum number of deletions required.
 equalizeArray has the following parameter(s):
    arr: an array of integers

 Input Format:
    The first line contains an integer , the number of elements in [arr].
    The next line contains -n- space-separated integers arr[i].

 https://www.hackerrank.com/challenges/equality-in-a-array/problem
 */

import Foundation

func equalizeArray(arr: [Int]) -> Int {
    var max = 1
    var map = [Int: Int]()

    for i in arr {
        if (!map.keys.contains(i)) {
            map[i] = 1
        } else {
            map[i] = map[i]! + 1
            if (max < map[i]!) {
                max = map[i]!
            }
        }
    }
    return arr.count - max
}

equalizeArray(arr: [3, 3, 2, 1, 3])
