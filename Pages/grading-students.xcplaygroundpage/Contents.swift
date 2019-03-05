
// Practice > Algorithms > Implementation > Grading Students
// Returns an integer array consisting of rounded grades.
//
// https://www.hackerrank.com/challenges/grading/problem

import Foundation

func gradingStudents(grades: [Int]) -> [Int] {

    var result = [Int]()

    for grade in grades {

        let multipleFive = ((grade/5) + 1) * 5

        switch grade {
        case 38...100 where (multipleFive - grade) < 3:
            result.append(multipleFive)
        case 38...100 where (multipleFive - grade) >= 3:
            result.append(grade)
        case 0...38:
            result.append(grade)
        default:
            result.append(0)
        }
    }

    return result

}

