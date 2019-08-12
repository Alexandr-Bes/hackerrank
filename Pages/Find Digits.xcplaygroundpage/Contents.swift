/*
 Practice > Algorithms > Implementation > Find Digits

    An integer <d> is a divisor of an integer <n> if the remainder of n/d = 0.

    Given an integer, for each digit that makes up the integer determine whether it is a divisor. Count the number of divisors occurring within the integer.

    Note: Each digit is considered to be unique, so each occurrence of the same digit should be counted.

    https://www.hackerrank.com/challenges/find-digits/problem
 */

import Foundation

func findDigits(n: Int) -> Int {
    var result = 0
    let digStr = String(n)

    for i in  digStr {
        if i == "0" {
            continue
        }
        let num = Int(String(i))!
        if (n % num) == 0 {
            result += 1
        }
    }
    return result
}

findDigits(n: 1012)
