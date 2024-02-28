import SwiftUI

struct MoviesView: View {
    // MARK: - PROPERTIES

    // MARK: - BODY
    var body: some View {
        NavigationView {
            Text("Filmy")
                .navigationTitle("Filmy")
        }
    }
}

// MARK: - PREVIEW
#Preview {
    MoviesView()
}
