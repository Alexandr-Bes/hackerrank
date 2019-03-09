
// Practice > Algorithms > Implementation > Bon Appétit
// Print Bon Appetit if the bill is fairly split. Otherwise, it should print the integer amount of money that Brian owes Anna.
//
// https://www.hackerrank.com/challenges/bon-appetit/problem

import Foundation


func bonAppetit(bill: [Int], k: Int, b: Int) -> Void {

    var fullAmount = 0
    var shouldPayAnna = 0

    for item in bill {
        fullAmount += item

    }

    shouldPayAnna = (fullAmount - bill[k]) / 2

    if shouldPayAnna == b {
        print("Bon Appetit")
    } else {
        print(b - shouldPayAnna)
    }

}


