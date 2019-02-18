
// Prints a staircase of size -n- using # symbols and spaces.
//
// https://www.hackerrank.com/challenges/staircase/problem

import Foundation

func staircase(n: Int) -> Void {

    for step in (1...n).reversed() {
        var stairs = ""

        stairs += String(repeating: " ", count: step-1) + String(repeating: "#", count: (n-step)+1)
        print(stairs)

    }

}
