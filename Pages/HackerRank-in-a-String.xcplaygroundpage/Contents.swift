/*
 Practice > Algorithms > Strings > HackerRank in a String!

 We say that a string contains the word -hackerrank- if a subsequence of its characters spell the word -hackerrank-. For example, if string "haacckkerrannkk" it does contain -hackerrank-, but "hackerworld" does not. If we reorder the first string as "hccacckeerrrankkk", it no longer contains the subsequence due to ordering.

    https://www.hackerrank.com/challenges/hackerrank-in-a-string/problem
 */


import Foundation

func hackerrankInString(s: String) -> String {

    let testCase = ["h", "a", "c", "k", "e", "r", "r", "a", "n", "k"]
    var temp = 0
    var result = ""

    for char in s {
        if testCase[temp] == String(char) {
            result.append(String(char))
            temp += 1
        }
        if temp > testCase.count-1 {
            break
        }
    }

    if result == "hackerrank" {
        return "YES"
    }

    return "NO"
}

hackerrankInString(s: "hereiamstackerrank")
