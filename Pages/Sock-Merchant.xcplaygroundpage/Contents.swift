/*
    Practice > Algorithms > Implementation > Sock Merchant

    Complete the sockMerchant function in the editor below. It must return an integer representing the number of matching pairs of socks that are available.

    sockMerchant has the following parameter(s):
        n: the number of socks in the pile
        ar: the colors of each sock
    https://www.hackerrank.com/challenges/sock-merchant/problem
 */

import Foundation

func sockMerchant(n: Int, ar: [Int]) -> Int {
    var count = 0
    var result = 0
    let clearArr = Array(Set(ar))
    var countArr = [Int]()

    for index in 0...clearArr.count-1 {
        for i in ar {
            if clearArr[index] == i {
                count += 1
            }
        }
        countArr.append(count)
        count = 0
    }

    for num in countArr {
        if num >= 2 {
            result += num/2
        }
    }
    return result
}

let arr = [1, 2, 1, 2, 1, 3, 2]
sockMerchant(n: 9, ar: arr)


/* Another Version with:
    Time Complexity: O(n)
    Space Complexity: O(n)
*/

func sockPairs(n: Int, ar:[Int]) -> Int {
    var pairs = 0
    var setOfPairs = Set<Int>()

    for index in 0...(n-1) {
        if (!setOfPairs.contains(ar[index])) {
            setOfPairs.insert(ar[index])
        } else {
            pairs += 1
            setOfPairs.remove(ar[index])
        }
    }
    return pairs
}

sockPairs(n: 9, ar: [10, 20, 20, 10, 10, 30, 50, 10, 20])
