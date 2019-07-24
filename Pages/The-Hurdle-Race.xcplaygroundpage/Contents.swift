/*
 Practice > Algorithms > Implementation > The Hurdle Race

 Dan is playing a video game in which his character competes in a hurdle race. Hurdles are of varying heights, and Dan has a maximum height he can jump. There is a magic potion he can take that will increase his maximum height by  unit for each dose. How many doses of the potion must he take to be able to jump all of the hurdles.

 Given an array of hurdle heights [height], and an initial maximum height Dan can jump, -k-, determine the minimum number of doses Dan must take to be able to clear all the hurdles in the race.

 https://www.hackerrank.com/challenges/the-hurdle-race/problem
 */

import Foundation

func hurdleRace(k: Int, height: [Int]) -> Int {
    var potion = 0
    let hightest = height.max()!

    if hightest > k {
        potion = hightest - k
    }

    return potion
}

hurdleRace(k: 7, height: [2, 5, 4, 5, 2])
