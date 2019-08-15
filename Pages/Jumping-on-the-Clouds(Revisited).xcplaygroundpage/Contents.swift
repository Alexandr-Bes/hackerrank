/*
 Practice > Algorithms > Implementation > Jumping on the Clouds: Revisited

    Complete the jumpingOnClouds function in the editor below. It should return an integer representing the energy level remaining after the game.

    To play, Aerith is given an array of clouds, let c = [Int]() and an energy level e = 100. She starts from c[0] and uses 1 unit of energy to make a jump of size <k> to cloud c[(i+k) % n]. If Aerith lands on a thundercloud, c[i] == 1, her energy (e) decreases by 2 additional units. The game ends when Aerith lands back on cloud 0.

    jumpingOnClouds has the following parameter(s):

        c: an array of integers representing cloud types
        k: an integer representing the length of one jump

    https://www.hackerrank.com/challenges/jumping-on-the-clouds-revisited/problem
 */

import Foundation


func jumpingOnClouds(c: [Int], k: Int) -> Int {
    var energy = 100
    var i = k
    var current = 0

    while i != 0 {
        current = (current + k) % c.count
        i = current
        energy -= 1
        if c[i] == 1 {
            energy -= 2
        }
    }
    print(energy)
    return energy
}

jumpingOnClouds(c: [0, 0, 1, 0, 0, 1, 1, 0], k: 2)
