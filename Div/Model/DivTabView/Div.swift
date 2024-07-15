import SwiftUI

enum Div {
    case app, movies, books, games, characters, locations

    var title: String {
        switch self {
        case .app: return "Div.cz"
        case .movies: return "Filmy"
        case .books: return "Knihy"
        case .games: return "Hry"
        case .characters: return "Postavy"
        case .locations: return "Lokality"
        }
    }

    var color: Color {
        switch self {
        case .app: return Color.white
        case .movies: return Color.red
        case .books: return Color.green
        case .games:return Color.blue
        case .characters: return Color.purple
        case .locations: return Color.yellow
        }
    }
}
