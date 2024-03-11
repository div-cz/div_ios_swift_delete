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
          Text("Div.cz")
        }
      }
  }
  
  private var moviesTab: some View {
    coordinator.moviesScene
      .tabItem {
        VStack {
          Image(systemName: "movieclapper")
          Text("Filmy")
        }
      }
  }
  
  private var booksTab: some View {
    coordinator.booksScene
      .tabItem {
        VStack {
          Image(systemName: "books.vertical")
          Text("Knihy")
        }
      }
  }
  
  private var gamesTab: some View {
    coordinator.gamesScene
      .tabItem {
        VStack {
          Image(systemName: "gamecontroller")
          Text("Hry")
        }
      }
  }
  
  private var infoTab: some View {
    coordinator.infoScene
      .tabItem {
        VStack {
          Image(systemName: "info.square")
          Text("Info")
        }
      }
  }
}

// MARK: - PREVIEW
#Preview {
  RootView()
    .environmentObject(Coordinator())
}
