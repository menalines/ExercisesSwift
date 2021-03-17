/// Copyright (c) 2018 Razeware LLC
///
/// Permission is hereby granted, free of charge, to any person obtaining a copy
/// of this software and associated documentation files (the "Software"), to deal
/// in the Software without restriction, including without limitation the rights
/// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
/// copies of the Software, and to permit persons to whom the Software is
/// furnished to do so, subject to the following conditions:
///
/// The above copyright notice and this permission notice shall be included in
/// all copies or substantial portions of the Software.
///
/// Notwithstanding the foregoing, you may not use, copy, modify, merge, publish,
/// distribute, sublicense, create a derivative work, and/or sell copies of the
/// Software in any work that is designed, intended, or marketed for pedagogical or
/// instructional purposes related to programming, coding, application development,
/// or information technology.  Permission for such use, copying, modification,
/// merger, publication, distribution, sublicensing, creation of derivative works,
/// or sale is expressly withheld.
///
/// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
/// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
/// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
/// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
/// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
/// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
/// THE SOFTWARE.
/*:
 ## Method Challenges

 ### Challenge 1
 
 Add type methods to your `Math` namespace called `isEven` and `isOdd` that return true if a number is even or odd respectively.
 */
struct Math { }

extension Math {
    static func isEven(num: Int) -> Bool {
        return num % 2 == 0
    }
    static func isOdd(num: Int) -> Bool {
        return num % 2 != 0
    }
}
/*:
 ### Challenge 2
 It turns out that `Int` is just a struct.  Add the computed properties `isEven` and `isOdd` to `Int` using an extension.
 */
extension Int {
    static func isEven(num: Int) -> Bool {
        return num % 2 == 0
    }
    static func isOdd(num: Int) -> Bool {
        return num % 2 != 0
    }
}
/*:
 ### Challenge 3
Add the method `primeFactors()` to `Int`. Since this is an expensive operation, this is best left as an actual method.
*/
extension Int {
    func primeFactors() { }
}
