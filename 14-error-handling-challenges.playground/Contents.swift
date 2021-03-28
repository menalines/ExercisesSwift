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
 ## Error Handling
 ### Challenge 1
 Write a throwing function that converts a `String` to a number.
 */

enum NumberError: Error {
  case notANumber
}

func getInt(_ string:String) throws -> Int {
    guard let result = Int(string) else { throw NumberError.notANumber }
    
    return result
}

print(try getInt("1"))

/*:
 ### Challenge 2
 Write a throwing function that divides two given numbers.
 */
enum DivisionError: Error {
  case divisionByZero
}

func divideNumbers(_ x: Int,_ y: Int) throws -> Int {
    guard x != 0, y != 0 else {
        throw DivisionError.divisionByZero
    }
    return x / y
}

print(try divideNumbers(6, 2))

/*:
 ### Challenge 3
 Write a throwing function that divides two given numbers passed as `String`. Handle different kinds of error from previous challenges
 */
enum requirements: Error {
    case errorNumber
    case divisionByZero
}

func divideNumbers(_ x: String,_ y: String) throws -> Int {
    guard !x.isEmpty, !y.isEmpty else {
        throw requirements.errorNumber
    }
    
    guard let x = Int(x), let y = Int(y), x != 0, y != 0 else {
        throw requirements.divisionByZero
    }
    
    return x / y
}

do {
    print(try divideNumbers("6", "2"))
} catch requirements.errorNumber {
    print("Falure")
}
