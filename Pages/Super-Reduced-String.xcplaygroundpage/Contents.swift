/*
 Practice > Algorithms > Strings > Super Reduced String

 Steve has a string of lowercase characters in range ascii[‘a’..’z’]. He wants to reduce the string to its shortest length by doing a series of operations. In each operation he selects a pair of adjacent lowercase letters that match, and he deletes them. For instance, the string aab could be shortened to b in one operation.

 Steve’s task is to delete as many characters as possible using this method and print the resulting string. If the final string is empty, print Empty String

    https://www.hackerrank.com/challenges/reduced-string/problem
 */

import Foundation

// Works but Bad Efficiency. Look at a bottom better solution
func superReducedString(s: String) -> String {
    var result = ""
    let sortedStr = s.sorted()
    var arrOfChars = [Character]()
    var resultArray = [Character]()
    var count = 1
    var temp = 0

    for char in sortedStr {
        arrOfChars.append(char)
    }

    for i in 1...arrOfChars.count-1 {
        if arrOfChars[temp] == arrOfChars[i] {
            count += 1
        } else {
            if count % 2 != 0 {
                resultArray.append(arrOfChars[temp])
                count = 1
            } else {
                count = 1
            }
        }

        if i == arrOfChars.count-1 {
            if count % 2 != 0 {
                resultArray.append(arrOfChars[temp])
                count = 1
            }
        }

        temp += 1
    }

    if resultArray.isEmpty {
        return "Empty String"
    }

    for char in resultArray {
        result.append(char)
    }

    return result
}

superReducedString(s: "aabbcc")

// Better solution! Works like Stack. O(n)
func superReducedStringV2(s: String) -> String {
    var check = s.first
    var result = String(check!)

    for i in 1...s.count-1 {
        let index = s.index(s.startIndex, offsetBy: i)

        if check != s[index] {
            check = s[index]
            result.append(check!)
        } else {

            if result.isEmpty {
                result.append(s[index])
            } else {
                let lastIndex = result.index(result.endIndex, offsetBy: -1)

                if result[lastIndex] == s[index] {
                    result.removeLast()
                } else {
                    result.append(s[index])
                }
            }
        }
    }

    if result.isEmpty {
        return "Empty String"
    }

    let temp = result.startIndex
    let secondIndex = result.index(result.startIndex, offsetBy: 1)

    if result[temp] == result[secondIndex] {
        return "Empty String"
    }

    return result
}

superReducedStringV2(s: "baab")

let greeting = "Guten Tag!"
let index = greeting.index(greeting.startIndex, offsetBy: 0)
let hell = greeting.index(greeting.startIndex, offsetBy: 7)
greeting[index]
