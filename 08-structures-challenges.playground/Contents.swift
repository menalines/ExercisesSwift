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

import Foundation



enum Direction: String {
    case right = "Right"
    case down = "Down"
}

struct Coordinate {
  let x: Int
  let y: Int
}

struct Ship {
    let origin: Coordinate
    let direction: Direction
    let length: Int
    let name: String
}

struct Board {
    var ships: [Ship] = []
}
/*:
 Set up ships.
 */

let patrolBoat = Ship(origin: Coordinate(x: 2, y: 2), direction: .right, length: 2, name: "PatrolBoat")
let battleship = Ship(origin: Coordinate(x: 5, y: 3), direction: .down, length: 4, name: "Battleship")
let submarine = Ship(origin: Coordinate(x: 0, y: 0), direction: .down, length: 3, name: "Submarine")

/*:
  Set up the board.
  */

var board = Board()
board.ships.append(contentsOf: [patrolBoat, battleship, submarine])

/*:
 Play the game.
 */
extension Ship {
    func getAllAvailableCoordinates() -> [Coordinate] {
        var allCoordinates = [Coordinate]()
        allCoordinates.append(origin)
        
        if length > 1 {
            for i in 1..<length {
                switch direction {
                case .right:
                    allCoordinates.append(Coordinate(x: origin.x + i, y: origin.y))
                case .down:
                    allCoordinates.append(Coordinate(x: origin.x, y: origin.y + i))
                }
            }
        }
        
        return allCoordinates
    }
}

extension Board {
    func fire(location: Coordinate) -> String {
        for ship in ships {
            if ship.getAllAvailableCoordinates().contains(where: { $0.x == location.x && $0.y == location.y }) {
                return "Hit on the \(ship.name)"
            }
        }
        
        return "Miss..."
    }
}

board.fire(location: Coordinate(x: 2, y: 2)) // Hit on the patrolBoat

board.fire(location: Coordinate(x: 2, y: 3)) // Miss...

board.fire(location: Coordinate(x: 5, y: 6)) // Hit on the battleship

board.fire(location: Coordinate(x: 5, y: 7)) // Miss...
