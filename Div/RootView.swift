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
            charactersTab
            locationsTab
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
    
    private var charactersTab: some View {
        coordinator.charactersScene
            .tabItem {
                VStack {
                    Image(systemName: "person")
                    Text(Div.characters.title)
                }
            }
    }
    
    private var locationsTab: some View {
        coordinator.locationsScene
            .tabItem {
                VStack {
                    Image(systemName: "map")
                    Text(Div.locations.title)
                }
            }
    }
}

// MARK: - PREVIEW
#Preview {
    RootView()
        .environmentObject(Coordinator())
    // Fetch data from API
        .environmentObject(MoviesObservableObject(moviesService: ProductionDataService()))
    
    // Mock data
    // .environmentObject(MoviesObservableObject(moviesService: MockDataService()))
}
