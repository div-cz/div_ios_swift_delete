import SwiftUI

struct MoviesView: View {
  // MARK: - PROPERTIES
  
  // MARK: - BODY
  var body: some View {
    NavigationStack {
      Text("Filmy")
        .navigationTitle(Div.movies.title)
    }
  }
}

// MARK: - PREVIEW
#Preview {
  NavigationStack {
    MoviesView()
  }
}
