import Foundation

enum Div {
  case app, movies, books, games, info
  
  var title: String {
    switch self {
    case .app: return "Div.cz"
    case .movies: return "Filmy"
    case .books: return "Knihy"
    case .games: return "Hry"
    case .info: return "Info"
    }
  }
}
