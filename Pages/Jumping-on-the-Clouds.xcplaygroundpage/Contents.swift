/*
    Practice > Algorithms > Strings > Jumping on the Clouds

 Emma is playing a new mobile game that starts with consecutively numbered clouds. Some of the clouds are thunderheads and others are cumulus. She can jump on any cumulus cloud having a number that is equal to the number of the current cloud plus 1 or 2. She must avoid the thunderheads. Determine the minimum number of jumps it will take Emma to jump from her starting postion to the last cloud. It is always possible to win the game.

For each game, Emma will get an array of clouds numbered 0 if they are safe or 1 if they must be avoided.

    https://www.hackerrank.com/challenges/jumping-on-the-clouds/problem
 */

import Foundation

func jumpingOnClouds(c: [Int]) -> Int {
    var i = 0
    var count = 0

    while i < c.count-1 {
        if (i+2) <= c.count-1 && c[i+2] != 1 {
            count += 1
            i += 2
        } else if (i+1) <= c.count-1 && c[i+1] != 1  {
            count += 1
            i += 1
        }
    }
    return count
}

jumpingOnClouds(c: [0, 0, 0, 0, 1, 0])


func anotherVersion(arr: [Int]) -> Int {
    var count = 0
    var i = 0

    while i < arr.count-1 {
        if i + 2 >= arr.count || arr[i+2] == 1 {
            i += 1
            count += 1
        } else {
            i += 2
            count += 1
        }
    }
    return count
}

anotherVersion(arr: [0, 0, 0, 0, 1, 0])
