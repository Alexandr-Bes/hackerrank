
/* Practice > Algorithms > Implementation > Drawing Book

 Complete the pageCount function in the editor below. It should return the minimum number of pages Brie must turn.
 PageCount has the following parameter(s):
    n: the number of pages in the book
    p: the page number to turn to

 https://www.hackerrank.com/challenges/drawing-book/problem
 */

import Foundation

func pageCount(n: Int, p: Int) -> Int {

    if p == 1 {
        return 0
    } else if p == n {
        return 0
    } else if n%2 != 0 && p == n-1 {
        return 0
    }
    var count = 0
    var count2 = 0
    let oddArray = Array(stride(from: 3, to: n, by: 2))

    for num in oddArray {
        count += 1
        if p == num || p == num-1 {
            break
        }
    }

    for num in oddArray.reversed() {
        count2 += 1
        if p == num || p == num-1 {
            break
        }
    }

    guard let min = [count, count2].min() else { return 0}

    return min

}
