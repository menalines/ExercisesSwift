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
 ## Classes
 ### Challenge 1

 Imagine you're writing a movie-viewing application in Swift. Users can create lists of movies and share those lists with other users.
 
 Create a `User` and a `List` class that uses reference semantics to help maintain lists between users.
 
 - `User` - Has a method `addList(_:)` which adds the given list to a dictionary of `List` objects (using the `name` as a key), and `list(forName:) -> List?` which will return the `List` for the provided name.
 - `List` - Contains a name and an array of movie titles. A `print` method will print all the movies in the list.
 - Create `jane` and `john` users and have them create and share lists. Have both `jane` and `john` modify the same list and call `print` from both users. Are all the changes reflected?
*/

class User {
    var listMovies: [String: List] = [:]

    func addList(_ list: List) {
        listMovies[list.name] = list
    }
    
    func list(forName name: String) -> List? {
        return listMovies[name]
    }
}

class List {
    let name: String
    var movies: [String]
    
    init(name: String, _ movies: [String] = []) {
        self.name = name
        self.movies = movies
    }
    
    func print() {
        Swift.print("List \(name):\n\(movies)")
    }
}

let jane = User()
let john = User()
var movies = ["Tom","Jerry"]
var userList = List(name: "1", movies)

jane.addList(userList)
john.addList(userList)

jane.listMovies[userList.name]?.print()
john.listMovies[userList.name]?.print()

jane.list(forName: userList.name)?.movies.append("New movie")

jane.listMovies[userList.name]?.print()
john.listMovies[userList.name]?.print()
/*:
 
 What happens when you implement the same with structs and what problems do you run into?
 */
// Classes have reference semantics, and structures have value type. They are copied, not linked. Therefore, if we were to use structures, after the list of John's films, only the list of John's films would change, so with Jane.
