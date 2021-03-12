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

/*:
 ## Optionals
 
 ### Challenge 1: You be the compiler
 Which of the following are valid statements?
 
 ```swift
 var name: String? = "Ray"
 var age: Int = nil
 let distance: Float = 26.7
 var middleName: String? = nil
 ```
*/
//var name: String? = "Ray"     // valid
//var age: Int = nil            // not valid, decision: var age: Int? = nil
//let distance: Float = 26.7    // valid
//var middleName: String? = nil // valid

/*:
 ### Challenge 2: Nested optionals
 
 Consider the following nested optional. It corresponds to a number inside a box inside a box inside a box.
 
 ```swift
 let number: Int??? = 10
 ```
 
 If you print number you get the following:
 
 ```swift
 print(number)
 // Optional(Optional(Optional(10)))
 
 print(number!)
 // Optional(Optional(10))
 ```
 
 1. Fully force unwrap and print `number`.
 2. Optionally bind and print `number` with if let.
 3. Write a function `printNumber(_ number: Int???)` that uses `guard` to print the number only if it is bound.
 */
let number: Int??? = 10
print(number!!!)

//if let number1 = number, let number2 = number1, let number3 = number2 {
//    print(number3)
//}

//func printNumber(_ number: Int???) {
//    guard let number1 = number, let number2 = number1, let number3 = number2  else {
//        print("Not value")
//        return
//    }
//    print(number3)
//}
