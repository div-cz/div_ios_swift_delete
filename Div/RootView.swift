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
            .navigationBarTitleDisplayMode(.inline)
            .toolbarBackground(.visible, for: .navigationBar)
            .accentColor(accentColor(for: selectedTab))
            .toolbar {
                divLogo
                // searchSymbol
                userAccount
            }
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

    private var userAccount: some ToolbarContent {
        ToolbarItem(placement: .topBarTrailing) {
            NavigationLink {
                coordinator.accountScene
            } label: {
                Image(systemName: "person.circle")
                    .foregroundColor(.white)
                    .font(Font.body.weight(.bold))
            }
        }
    }

    private var searchSymbol: some ToolbarContent {
        ToolbarItem(placement: .topBarTrailing) {
            Button {

            } label: {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.white)
                    .font(Font.body.weight(.bold))
            }
        }
    }

    private var divLogo: some ToolbarContent {
        ToolbarItem(placement: .topBarLeading) {
            HStack(spacing: 15) {
                Image(.divLogo)
                    .resizable()
                    .frame(width: 25, height: 25)
                Text(navTitle(for: selectedTab))
                    .fontWeight(.bold)
            }
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
