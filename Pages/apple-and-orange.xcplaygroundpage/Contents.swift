
// Practice > Algorithms > Implementation > Apple and Orange
// Print two integers on two different lines:
//      1. The first integer: the number of apples that fall on Sam's house.
//      2. The second integer: the number of oranges that fall on Sam's house.
//
// https://www.hackerrank.com/challenges/apple-and-orange/problem

import Foundation

func countApplesAndOranges(s: Int, t: Int, a: Int, b: Int, apples: [Int], oranges: [Int]) {

    var result = [Int]()
    var count = 0

    for i in apples {
        let coordinates = a + i

        switch coordinates {
        case s...t:
            count += 1
        default:
            continue
        }

    }

    result.append(count)
    count = 0

    for i in oranges {
        let coordinates = b + i

        switch coordinates {
        case s...t:
            count += 1
        default:
            continue
        }

    }

    result.append(count)

    for index in result {
        print(index)
    }

}

countApplesAndOranges(s: 7, t: 11, a: 5, b: 15, apples: [-2, 2, 1], oranges: [5, -6])
