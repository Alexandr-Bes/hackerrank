/*
    Practice > Algorithms > Implementation > Beautiful Days at the Movies

 Complete the beautifulDays function in the editor below. It must return the number of beautiful days in the range.

 beautifulDays has the following parameter(s):

    i: the starting day number
    j: the ending day number
    k: the divisor

    https://www.hackerrank.com/challenges/beautiful-days-at-the-movies/problem
 */

import Foundation

func beautifulDays(i: Int, j: Int, k: Int) -> Int {
    var result = 0
    var reversed = ""
    for num in i...j {
        for char in String(num) {
            reversed.insert(char, at: reversed.startIndex)
        }
        guard var rev = Int(reversed) else { return 0 }
        if (num - rev) % k == 0 {
            result += 1
        }
        reversed = ""
        rev = 0
    }
    return result
}

beautifulDays(i: 20, j: 23, k: 6)


func beautifulDays1(i: Int, j: Int, k: Int) -> Int {
    var result = 0
    var reversed = ""
    for num in i...j {
        reversed = String(String(num).reversed())

        if (num - Int(reversed)!) % k == 0 {
            result += 1
        }
        reversed = ""
    }
    return result
}


