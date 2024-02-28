import SwiftUI

struct RootView: View {
    @EnvironmentObject var coordinator: Coordinator

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
        coordinator.mainScene
            .tabItem {
                VStack {
                    Image(systemName: "square.grid.2x2.fill")
                    Text("Domů")
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

    private var celebritiesTab: some View {
        coordinator.celebritiesScene
            .tabItem {
                VStack {
                    Image(systemName: "person.crop.square")
                    Text("Osobnosti")
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
