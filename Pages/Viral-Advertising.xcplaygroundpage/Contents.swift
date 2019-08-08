/*
 Practice > Algorithms > Implementation > Viral Advertising

 Complete the viralAdvertising function in the editor below. It should return the cumulative number of people who have liked the ad at a given time.

 viralAdvertising has the following parameter(s):

    n: the integer number of days

    https://www.hackerrank.com/challenges/strange-advertising/problem
 */

import Foundation

func viralAdvertising(n: Int) -> Int {
    var result = Int()
    var shared = 5
    var liked = 0

    for _ in 1...n {
        liked = shared/2
        result += liked
        shared = (liked * 3)
    }

    return result
}

viralAdvertising(n: 50)
