import SwiftUI

struct RootView: View {
    @EnvironmentObject var coordinator: Coordinator
    @State private var selectedTab: Div = .home

    // MARK: - BODY
    var body: some View {
        NavigationView {
            TabView(selection: $selectedTab) {
                homeTab
                moviesTab
                booksTab
                gamesTab
                moreTab
            }
            .navigationTitle(navTitle(for: selectedTab))
            .navigationBarTitleDisplayMode(.inline)
            .toolbarBackground(accentColor(for: selectedTab), for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
            .accentColor(accentColor(for: selectedTab))
        }
    }
}

extension RootView {
    private var homeTab: some View {
        coordinator.mainScene
            .tabItem {
                VStack {
                    Image(systemName: "house")
                    Text(Div.home.title)
                }
            }
            .tag(Div.home)
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

    private var moreTab: some View {
        coordinator.moreTabList
            .tabItem {
                VStack {
                    Image(systemName: "ellipsis")
                    Text("Další")
                }
            }
            .tag(Div.others)
    }

    private func navTitle(for selection: Div) -> String {
        switch selection {
        case .home: return Div.home.title
        case .movies: return Div.movies.title
        case .books: return Div.books.title
        case .games: return Div.games.title
        case .characters: return Div.characters.title
        case .locations: return Div.locations.title
        case .others: return Div.others.title
        }
    }

    private func accentColor(for selection: Div) -> Color {
        switch selection {
        case .home: return Div.home.color
        case .movies: return Div.movies.color
        case .books: return Div.books.color
        case .games: return Div.games.color
        case .characters: return Div.characters.color
        case .locations: return Div.locations.color
        case .others: return Div.others.color
        }
    }
}


// MARK: - Preview
#Preview {
    RootView()
        .preferredColorScheme(.dark)
        .environmentObject(Coordinator())
    // Fetch data from API
        .environmentObject(MoviesObservableObject(moviesService: ProductionDataService()))

    // Mock data
    // .environmentObject(MoviesObservableObject(moviesService: MockDataService()))
}
