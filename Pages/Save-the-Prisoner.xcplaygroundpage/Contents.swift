/*
 Practice > Algorithms > Implementation > Save the Prisoner!

 The jailer is playing a little joke, though. The last piece of candy looks like all the others, but it tastes awful. Determine the chair number occupied by the prisoner who will receive that candy.

 For example, there are 4 prisoners and 6 pieces of candy. The prisoners arrange themselves in seats numbered 1 to 4. Let's suppose two is drawn from the hat. Prisoners receive candy at positions 2, 3, 4, 1, 2, 3. The prisoner to be warned sits in chair number -3-.

 Function Description:
    Complete the saveThePrisoner function in the editor below. It should return an integer representing the chair number of the prisoner to warn.

    saveThePrisoner has the following parameter(s):

        n: an integer, the number of prisoners
        m: an integer, the number of sweets
        s: an integer, the chair number to begin passing out sweets from

    https://www.hackerrank.com/challenges/save-the-prisoner/problem
 */


import Foundation

// Version #1 Bad efficiency.
func saveThePrisoner(n: Int, m: Int, s: Int) -> Int {

    var sweets = m

    for i in s...n {
        sweets -= 1
        if sweets == 0 {
            return i
        }
    }

    while sweets != 0 {
        for i in 1...n {
            sweets -= 1
            if sweets == 0 {
                return i
            }
        }
    }
    return 0
}

saveThePrisoner(n: 7, m: 19, s: 2)

// Version #2 Better efficiency, but still bad
func saveV2(n: Int, m: Int, s: Int) -> Int {

    var sweetty = (m - (n - s + 1))

    if sweetty <= 0 {
        return n + sweetty
    }

    while sweetty != 0 {
        sweetty = sweetty - n

        if sweetty <= 0 {
            return n + sweetty
        }
    }

    return 0
}

saveV2(n: 7, m: 19, s: 2)

// Version #3 Good efficiency: O(1)
func saveV3(n: Int, m: Int, s: Int) -> Int {
    let res = s + m - 1

    if res > n {
        if res % n == 0 {
            return n
        }
        return res % n
    }

    return res
}

saveV2(n: 7, m: 19, s: 2)

// Version #4 Same efficiency as in ver#3
func xyx(n: Int, m: Int, s: Int) -> Int {
    let result = m % n

    if (result + s - 1) % n == 0 {
        return n
    }

    return (result + s - 1) % n
}

xyx(n: 7, m: 19, s: 2)
