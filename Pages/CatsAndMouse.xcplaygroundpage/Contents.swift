/*
 Practice > Algorithms > Implementation > Cats and a Mouse

 Complete the catAndMouse function. It should return one of the three strings.
 CatAndMouse has the following parameter(s):
    x: an integer, Cat 's position
    y: an integer, Cat 's position
    z: an integer, Mouse 's position

 If cat  catches the mouse first, print Cat A.
 If cat  catches the mouse first, print Cat B.
 If both cats reach the mouse at the same time, print Mouse C as the two cats fight and mouse escapes.
    https://www.hackerrank.com/challenges/cats-and-a-mouse/problem
 */

import Foundation

func catAndMouse(x: Int, y: Int, z: Int) -> String {
    var countA = 0
    var countB = 0

    if x < z {
        for _ in x..<z {
            countA += 1
        }
    } else {
        for _ in z..<x {
            countA += 1
        }
    }

    if y < z {
        for _ in y..<z {
            countB += 1
        }
    } else {
        for _ in z..<y {
            countB += 1
        }
    }

    switch countA {
    case let (x) where x == countB:
        return "Mouse C"
    case let (x) where x < countB:
        return "Cat A"
    case let (x) where x > countB:
        return "Cat B"
    default:
        return "Nobody"
    }
}
