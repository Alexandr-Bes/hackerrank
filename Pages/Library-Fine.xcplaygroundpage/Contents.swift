/*
 Practice > Algorithms > Implementation > Library Fine

    Complete the libraryFine function in the editor below. It must return an integer representing the fine due.

    libraryFine has the following parameter(s):

        d1, m1, y1: returned date day, month and year
        d2, m2, y2: due date day, month and year

    https://www.hackerrank.com/challenges/library-fine/editorial
 */

import Foundation

func libraryFine(d1: Int, m1: Int, y1: Int, d2: Int, m2: Int, y2: Int) -> Int {
    var result = 0

    if y1 > y2 {
        result += 10000
        return result
    } else if y2 > y1 {
        return 0
    }

    if m1 > m2 {
        result += 500 * (m1 - m2)
        return result
    } else if m2 > m1 {
        return 0
    }

    if d1 > d2 {
        return 15 * (d1 - d2)
    }

    return result
}

libraryFine(d1: 2, m1: 7, y1: 1014, d2: 1, m2: 1, y2: 1015)
libraryFine(d1: 28, m1: 2, y1: 2015, d2: 15, m2: 4, y2: 2015)
