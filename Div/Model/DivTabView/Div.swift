import SwiftUI

enum Div {
    case home, movies, books, games, characters, locations, others

    var title: String {
        switch self {
        case .home: return "Div.cz"
        case .movies: return "Filmy"
        case .books: return "Knihy"
        case .games: return "Hry"
        case .characters: return "Postavy"
        case .locations: return "Lokality"
        case .others: return "Další"
        }
    }

    var color: Color {
        switch self {
        case .movies: return Color.red
        case .books: return Color.green
        case .games:return Color.blue
        case .characters: return Color.yellow
        case .locations: return Color.purple
        default: return Color.orange
        }
    }
}
