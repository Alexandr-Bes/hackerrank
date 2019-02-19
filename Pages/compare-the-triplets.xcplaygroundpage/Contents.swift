
// Return an array of two integers denoting the respective comparison points earned by Alice and Bob.
//
// https://www.hackerrank.com/challenges/compare-the-triplets/problem

import Foundation

func compareTriplets(a: [Int], b: [Int]) -> [Int] {

    var finalScore = [Int]()
    var firstScores = 0
    var secondScores = 0

    for (sc1, sc2) in zip(a, b) {

        if sc1 > sc2 {
            firstScores += 1
        } else if sc2 > sc1 {
            secondScores += 1
        }
        finalScore = [firstScores] + [secondScores]
    }

    return finalScore
}

