import SwiftUI

struct RootView: View {
    @EnvironmentObject var coordinator: Coordinator
    @State private var selection: Div = .app

    // MARK: - BODY
    var body: some View {
        TabView(selection: $selection) {
                homeTab
                moviesTab
                booksTab
                gamesTab
                charactersTab
                locationsTab
            }
        .accentColor(accentColor(for: selection))
    }
}

// MARK: - EXTENSION
extension RootView {
    private func accentColor(for selection: Div) -> Color {
        switch selection {
        case .app: return Div.app.color
        case .movies: return Div.movies.color
        case .books: return Div.books.color
        case .games: return Div.games.color
        case .characters: return Div.characters.color
        case .locations: return Div.locations.color
        }
       }

    private var homeTab: some View {
        coordinator.mainScene
            .tabItem {
                VStack {
                    Image(systemName: "square.grid.2x2.fill")
                    Text(Div.app.title)
                }
            }
            .tag(Div.app)
    }
    
    private var moviesTab: some View {
        coordinator.moviesScene
            .tabItem {
                VStack {
                    Image(systemName: "movieclapper")
                    Text(Div.movies.title)
                }
            }
            .tag(Div.movies)
    }
    
    private var booksTab: some View {
        coordinator.booksScene
            .tabItem {
                VStack {
                    Image(systemName: "books.vertical")
                    Text(Div.books.title)
                }
            }
            .tag(Div.books)
    }
    
    private var gamesTab: some View {
        coordinator.gamesScene
            .tabItem {
                VStack {
                    Image(systemName: "gamecontroller")
                    Text(Div.games.title)
                }
            }
            .tag(Div.games)
    }
    
    private var charactersTab: some View {
        coordinator.charactersScene
            .tabItem {
                VStack {
                    Image(systemName: "person")
                    Text(Div.characters.title)
                }
            }
            .tag(Div.characters)
    }
    
    private var locationsTab: some View {
        coordinator.locationsScene
            .tabItem {
                VStack {
                    Image(systemName: "map")
                    Text(Div.locations.title)
                }
            }
            .tag(Div.locations)
    }
}

// MARK: - PREVIEW
#Preview {
    RootView()
        .preferredColorScheme(.dark)
        .environmentObject(Coordinator())
    // Fetch data from API
        .environmentObject(MoviesObservableObject(moviesService: ProductionDataService()))
    
    // Mock data
    // .environmentObject(MoviesObservableObject(moviesService: MockDataService()))
}
