/*
 Practice > Algorithms > Implementation > Designer PDF Viewer

 Complete the designerPdfViewer function in the editor below. It should return an integer representing the size of the highlighted area.

 designerPdfViewer has the following parameter(s):
 - h: an array of integers representing the heights of each letter
 - word: a string

 Input Format:
 The first line contains  space-separated integers describing the respective heights of each consecutive lowercase English letter, ascii[a-z].
 The second line contains a single word, consisting of lowercase English alphabetic letters.

 Output Format:
 Print a single integer denoting the area in - mm2 - of highlighted rectangle when the given word is selected. Do not print units of measure.

 https://www.hackerrank.com/challenges/designer-pdf-viewer/problem
 */

import Foundation

func designerPdfViewer(h: [Int], word: String) -> Int {
    let alphabet = "abcdefghijklmnopqrstuvwxyz"
    let alphabetArr = Array(alphabet)
    var dict = [Character: Int]()
    var array = [Int]()

    for (index, height) in alphabetArr.enumerated() {
        dict[height] = h[index]
    }

    for char in word {
        array.append(dict[char]!)
    }
    let max = array.max()!

    return (word.count * max)
}

designerPdfViewer(h: [1, 3, 1, 3, 1, 4, 1, 3, 2, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5], word: "abc")
