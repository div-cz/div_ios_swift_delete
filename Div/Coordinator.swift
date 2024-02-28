import SwiftUI

final class Coordinator: ObservableObject {
    var mainScene: some View {
        MainView()
    }

    var moviesScene: some View {
        MoviesView()
    }

    var celebritiesScene: some View {
        CelebritiesView()
    }

    var infoScene: some View {
        InfoView()
    }
}
