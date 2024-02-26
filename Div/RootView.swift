import SwiftUI

struct RootView: View {

    // MARK: - BODY
    var body: some View {
            TabView {
                homeTab
                moviesTab
                celebritiesTab
                infoTab
            }
    }
}

// MARK: - EXTENSION
extension RootView {
    private var homeTab: some View {
        MainView()
            .tabItem {
                VStack {
                    Image(systemName: "square.grid.2x2.fill")
                    Text("Domů")
                }
            }
    }

    private var moviesTab: some View {
        Text("Filmy")
            .tabItem {
                VStack {
                    Image(systemName: "movieclapper")
                    Text("Filmy")
                }
            }
    }

    private var celebritiesTab: some View {
        Text("Osobnosti")
            .tabItem {
                VStack {
                    Image(systemName: "person.crop.square")
                    Text("Osobnosti")
                }
            }
    }

    private var infoTab: some View {
        Text("Informace & kontakty")
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
    NavigationView {
        RootView()
    }
}
