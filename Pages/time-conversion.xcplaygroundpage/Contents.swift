
// Converts the given time to 24-hour format
//
// https://www.hackerrank.com/challenges/time-conversion/problem

import Foundation

func timeConversion(s: String) -> String {

    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "h:mm:ssa"
    let date = dateFormatter.date(from: s)

    dateFormatter.dateFormat = "HH:mm:ss"
    let date24 = dateFormatter.string(from: date!)

    return date24
}

