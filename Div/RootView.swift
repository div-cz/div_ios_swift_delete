import SwiftUI

struct RootView: View {
  @EnvironmentObject var coordinator: Coordinator
  
  // MARK: - BODY
  var body: some View {
    TabView {
      homeTab
      moviesTab
      booksTab
      gamesTab
      infoTab
    }
  }
}

// MARK: - EXTENSION
extension RootView {
  private var homeTab: some View {
    coordinator.mainScene
      .tabItem {
        VStack {
          Image(systemName: "square.grid.2x2.fill")
          Text(Div.app.title)
        }
      }
  }
  
  private var moviesTab: some View {
    coordinator.moviesScene
      .tabItem {
        VStack {
          Image(systemName: "movieclapper")
          Text(Div.movies.title)
        }
      }
  }
  
  private var booksTab: some View {
    coordinator.booksScene
      .tabItem {
        VStack {
          Image(systemName: "books.vertical")
          Text(Div.books.title)
        }
      }
  }
  
  private var gamesTab: some View {
    coordinator.gamesScene
      .tabItem {
        VStack {
          Image(systemName: "gamecontroller")
          Text(Div.games.title)
        }
      }
  }
  
  private var infoTab: some View {
    coordinator.infoScene
      .tabItem {
        VStack {
          Image(systemName: "info.square")
          Text(Div.info.title)
        }
      }
  }
}

// MARK: - PREVIEW
#Preview {
  RootView()
    .environmentObject(Coordinator())
}
