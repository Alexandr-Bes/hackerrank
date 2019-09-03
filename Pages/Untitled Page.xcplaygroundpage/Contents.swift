//: [Previous](@previous)

import Foundation

import Foundation

func cutTheSticks(arr: [Int]) -> [Int] {
    var count = [Int]()
    let length = arr.count
    var testArr = arr

    while testArr.count > 0 {
        let min = testArr.min()!

        for i in 0...testArr.count-1 {
            if i > testArr.count-1 {
                break
            }

            if (testArr[i] - min) == 0 {
                testArr.remove(at: i)
            } else {
                testArr[i] = testArr[i] - min
            }

        }

    }

    return count
}
