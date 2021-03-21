import Foundation

public enum GameCharacterType {
    case elf
    case giant
    case wizard
}

public protocol GameCharacter {
    var name: String { get set }
    var hitPoints: Int { get set }
    var attackPoints: Int { get set }
}

public struct Elf: GameCharacter {
    public var name: String
    public var hitPoints: Int
    public var attackPoints: Int
}

public struct Giant: GameCharacter {
    public var name: String
    public var hitPoints: Int
    public var attackPoints: Int
}

public struct Wizard: GameCharacter {
    public var name: String
    public var hitPoints: Int
    public var attackPoints: Int
}

public struct GameCharacterFactory {
    public static func make(ofType character: GameCharacterType) -> GameCharacter {
        switch character {
        case .elf:
            return Elf(name: "Elf", hitPoints: 3, attackPoints: 10)
        case .giant:
            return Giant(name: "Giant", hitPoints: 10, attackPoints: 3)
        case .wizard:
            return Wizard(name: "Wizard", hitPoints: 5, attackPoints: 5)
        }
    }
}

public func battle(_ character1: inout GameCharacter, vs character2: inout GameCharacter) {
    repeat {
        character2.hitPoints -= character1.attackPoints
        character1.hitPoints -= character2.attackPoints
    } while character1.hitPoints > 0 && character2.hitPoints > 0
    
    print("\(character2.hitPoints > 0 ? character1.name : character2.name) defeated!")
}
