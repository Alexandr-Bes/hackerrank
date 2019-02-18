
// Return the number of candles that can be blown out on a new line.
//
// https://www.hackerrank.com/challenges/birthday-cake-candles/problem

import Foundation

func birthdayCakeCandles(ar: [Int]) -> Int {

    let max = ar.max()!
    var countOfMax = 0

    for i in ar {
        if i == max {
            countOfMax += 1
        }
    }

    return countOfMax
}
