/*
 Practice > Algorithms > Implementation > Angry Professor

 Complete the angryProfessor function in the editor below. It must return YES if class is cancelled, or NO otherwise.

 angryProfessor has the following parameter(s):

    k: the threshold number of students
    a: an array of integers representing arrival times


    https://www.hackerrank.com/challenges/angry-professor/problem
 */

import Foundation

func angryProfessor(k: Int, a: [Int]) -> String {
    var arrCount = [Int]()

    for i in a {
        if i <= 0 {
            arrCount.append(i)
        }
    }

    if arrCount.count >= k {
        return "NO"
    } else {
        return "YES"
    }
}

angryProfessor(k: 2, a: [0, -1, 2, 1])
