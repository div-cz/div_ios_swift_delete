import SwiftUI

final class Coordinator: ObservableObject {
  var mainScene: some View {
    MainView()
  }
  
  var moviesScene: some View {
    MoviesView()
  }
  
  var booksScene: some View {
    BooksView()
  }
  
  var gamesScene: some View {
    GamesView()
  }
  
  var infoScene: some View {
    InfoView()
  }
}
