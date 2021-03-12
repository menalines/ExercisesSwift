/**
 * Copyright (c) 2018 Razeware LLC
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * Notwithstanding the foregoing, you may not use, copy, modify, merge, publish,
 * distribute, sublicense, create a derivative work, and/or sell copies of the
 * Software in any work that is designed, intended, or marketed for pedagogical or
 * instructional purposes related to programming, coding, application development,
 * or information technology.  Permission for such use, copying, modification,
 * merger, publication, distribution, sublicensing, creation of derivative works,
 * or sale is expressly withheld.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */
import Foundation
/*:
 ## Arrays
 ### Challenge 1.
 Which of the following are valid statements?
*/
 //let array1 = [Int]()      // valid
//let array2 = []           // not valid
//let array3: [String] = [] // valid

//: Given:
let array4 = [1, 2, 3]

//: Which of the following five statements are valid

//print(array4[0])  // valid
//print(array4[5])  // valid
//array4[1...2]     // valid
//array4[0] = 4     // not valid, because array4 is constant
//array4.append(4)  // not valid, because array4 is constant

//: Given:
var array5 = [1, 2, 3]

//: Which of the five statements are valid?
//array5[0] = array5[1]                 // valid
//array5[0...1] = [4, 5]                // valid
//array5[0] = "Six"                     // not valid, because array5 consist of only Int
//array5 += 6                           // not valid, because array5 is array
//for item in array5 { print(item) }    // valid
/*:
 ### Challenge 2
 Write a function that removes the first occurrence of a given integer from an array of integers.
 This is the signature of the function:
 
 ```
 func removingOnce(_ item: Int, from array: [Int]) -> [Int]
 ```
*/
//func removingOnce(_ item: Int, from array: [Int]) -> [Int] {
//    var newArray = array
//
//    innerLoop: for elem in newArray {
//        if elem == item {
//            newArray.remove(at: elem)
//            break innerLoop
//        }
//    }
//
//    return newArray
//}

/*:
 ### Challenge 3
 Write a function that removes all occurrences of a given integer from an array of integers. 
 This is the signature of the function:
 
```
 func removing(_ item: Int, from array: [Int]) -> [Int]
```
*/

//func removing(_ item: Int, from array: [Int]) -> [Int] {
//    var newArray = array
//
//    for elem in newArray {
//        if elem == item {
//            newArray.remove(at: elem)
//        }
//    }
//
//    return newArray
//}

/*:
 ### Challenge 4
 Arrays have a `reversed()` method that returns an array holding the same elements as the original array, in reverse order. 
 Write a function that does the same thing, without using `reversed()`. This is the signature of the function:

 ```
 func reversed(_ array: [Int]) -> [Int]
 ```
*/
//var array = [1, 2, 3, 4]
//print(reversed(&array))
//
//func reversed(_ array: inout [Int]) -> [Int] {
//    let sortedArray = array.sorted {
//        $0 > $1
//    }
//
//    return sortedArray
//}

/*:
 ### Challenge 5
 Write a function that returns the middle element of an array.
 When array size is even, return the first of the two middle elements.
 
 ```swift
 func middle(_ array: [Int]) -> Int?
 ```
*/
//var numbers = [1, 2, 3, 5, 6, 7]
//
//func middle(_ array: [Int]) -> Int? {
//    guard !array.isEmpty else {
//        return nil
//    }
//
//    return array[array.count % 2 == 0 ? (array.count / 2) - 1 : array.count / 2]
//}
//
//middle(numbers)

/*:
 ### Challenge 6
 
 Write a function that calculates the minimum and maximum value in an array of integers. 
 Calculate these values yourself, do not use the methods `min` and `max`. 
 Return `nil` if the given array is empty.
 
 This is the signature of the function:

```
func minMax(of numbers: [Int]) -> (min: Int, max: Int)?
```
 
 */
//let numbers = [1, 2, 3, 4, 5]
//
//func minMax(of numbers: [Int]) -> (min: Int, max: Int)? {
//    let min = numbers.min()
//    let max = numbers.max()
//
//    if let min = min, let max = max {
//        return (min: min, max: max)
//    }
//
//    return nil
//}

/*:
 ## Dictionaries
 ### Challenge 7
 Which of the following statements are valid?
 */

//let dict1: [Int, Int] = [:]   // not valid
//let dict2 = [:]               // not valid
//let dict3: [Int: Int] = [:]   // valid

//: Given
let dict4 = ["One": 1, "Two": 2, "Three": 3]
//: Which of the following are valid:

//dict4[1]          // not valid
//dict4["One"]      // valid
//dict4["Zero"] = 0 // not valid
//dict4[0] = "Zero" // not valid

//: Given
var dict5 = ["NY": "New York", "CA": "California"]

//: Which of the following are valid?
//dict5["NY"]                   // valid
//dict5["WA"] = "Washington"    // valid
//dict5["CA"] = nil             // valid


/*:
 ### Challenge 8
 Given a dictionary with 2-letter state codes as keys and the full state name as values, write a function that prints all the states whose name is longer than 8 characters. For example, for this dictionary ["NY": "New York", "CA": "California"] the output would be "California".
 */

//let dictionary = ["NY": "New York", "CA": "California"]
//
//func getCurrentNames(_ data: [String: String]) {
//    dictionary.map {
//        guard $0.value.count > 8 else {
//            return
//        }
//        print($0.value)
//    }
//}
//
//getCurrentNames(dictionary)
/*:
 ### Challenge 9
 Write a function that combines two dictionaries into one. If a certain key appears in both dictionaries, ignore the pair from the first dictionary.
 This is the signature of the function:
 ```
 func combine(dict1: [String: String], with dict2: [String: String]) -> [String: String]
 ```
 */
//var dictionary1:[String:String] = ["Mohan":"75", "Raghu":"82", "John":"80"]
//var dictionary2:[String:String] = ["Surya":"91", "John":"79", "Saranya":"92"]
//
//func combine(_ dict1: [String: String], with dict2: [String: String]) -> [String: String] {
//    return dict1.merging(dict2){(_,new) in new}
//}
//
//print(combine(dictionary1, with: dictionary2))
/*:
 ### Challenge 10
 Declare a function `occurrencesOfCharacters` that calculates which characters occur in a string, as well as how often each of these characters occur.
 Return the result as a dictionary. This is the function signature:
 ```
 func occurrencesOfCharacters(in text: String) -> [Character: Int]
 ```
 Hint: `String` is a collection of characters that you can iterate over with a for statement.
*/
//
//var text = "Alise will have a dog tomorrow!"
//
//print(occurrencesOfCharacters(in: text))
//
//func occurrencesOfCharacters(in text: String) -> [Character: Int] {
//    var occurrences = [Character: Int]()
//
//    for char in text {
//        occurrences[char, default: 0] += 1
//    }
//
//    return occurrences
//}

/*
 Bonus: To make your code shorter, dictionaries have a special subscript operator that let you add a default value if it is not found in the dictionary. For example, dictionary["a", default: 0] creates a 0 entry for the character "a" if it is not found instead of returning nil.
*/


/*:
 ### Challenge 11
 Write a function that returns true if all of the values of a dictionary are unique.  Use a set to test uniqueness.
 This is the function signature:
 ```
 func isInvertible(_ dictionary: [String: Int]) -> Bool
 ```
 */
//var dictionary:[String: Int] = ["Mohan": 1, "Raghu": 1, "John": 2]
//print(isInvertible(dictionary))
//
//func isInvertible(_ dictionary: [String: Int]) -> Bool {
//    var array = [Int]()
//
//    for (_, value) in dictionary {
//        if array.isEmpty || !array.contains(value) {
//            array.append(value)
//        } else {
//            return false
//        }
//    }
//    return true
//}

