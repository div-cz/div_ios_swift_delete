import SwiftUI

struct MoviesView: View {
  // MARK: - PROPERTIES
  var movie = MoviesApi()
  // MARK: - BODY
  var body: some View {
    NavigationStack {
      Text("Filmy")
        .navigationTitle(Div.movies.title)
        List {
            
        }
    }
    .task {
        await movie.getData()
    }
  }
}

// MARK: - PREVIEW
#Preview {
  NavigationStack {
    MoviesView()
  }
}
