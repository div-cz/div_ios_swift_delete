import SwiftUI

struct MoviesView: View {
    // MARK: - PROPERTIES

    // MARK: - BODY
    var body: some View {
        NavigationStack {
            Text("Filmy")
                .navigationTitle("Filmy")
        }
    }
}

// MARK: - PREVIEW
#Preview {
    NavigationStack {
        MoviesView()
    }
}
