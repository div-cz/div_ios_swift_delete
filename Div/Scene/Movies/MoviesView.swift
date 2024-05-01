import SwiftUI

struct MoviesView: View {
    // MARK: - PROPERTIES
    let model = MoviesViewModel()

    // MARK: - BODY
    var body: some View {
        NavigationStack {
            List(model.movies, id: \.id) { movie in
                VStack(alignment: .leading) {
                    Text("ID: \(movie.id)")
                    Text(movie.title ?? "Title movie")
                        .font(.largeTitle)
                        .bold()
                    Text(movie.titleCZ ?? "")
                        .font(.title2)
                        .padding(.bottom, 10)
                    Text(movie.description ?? "Description")
                    Text("Rating: \(movie.averageRating ?? "N/A")")
                    Text("Popularity: \(movie.popularity ?? "N/A")")
                }
            }
            .navigationTitle(Div.movies.title)
        }
        .task {
            await model.fetchMoviessData()
        }
    }
}

// MARK: - PREVIEW
#Preview {
    NavigationStack {
        MoviesView()
        // Fetch data from API endpoint
            .environmentObject(MoviesObservableObject(moviesService: ProductionDataService()))
    }
}
