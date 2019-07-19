
/* Practice > Algorithms > Implementation > Migratory Birds
 
    Assume your bird sightings are of types arr = [1, 1, 2, 2, 3]. There are two each of types 1 and 2, and one sighting of type 3.
    Pick the lower of the two types seen twice: type 1.

    https://www.hackerrank.com/challenges/migratory-birds/problem
*/
import Foundation

func migratoryBirds(arr: [Int]) -> Int {
    var count1 = 0
    var count2 = 0
    var count3 = 0
    var count4 = 0
    var count5 = 0

    for value in arr {
        switch value {
        case 1:
            count1 += 1
        case 2:
            count2 += 1
        case 3:
            count3 += 1
        case 4:
            count4 += 1
        case 5:
            count5 += 1
        default:
            return 0
        }
    }

    var tempDict = [1: count1, 2: count2, 3: count3, 4: count4, 5: count5]
    let max = tempDict.values.max()
    let filtered = tempDict.filter {$0.value == max}
    guard let result = filtered.keys.min() else { return 0 }

    return result
}

