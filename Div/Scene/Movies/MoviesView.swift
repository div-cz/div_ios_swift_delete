import SwiftUI

struct MoviesView: View {
    // MARK: - PROPERTIES
    let model = MoviesViewModel()

    // MARK: - BODY
    var body: some View {
        NavigationStack {
            ScrollView {
                Text("Filmy")
                LazyVStack(alignment: .leading) {
                    ForEach(model.movies, id: \.id) { movie in
                        HStack {
                            CardView(image: movie.imgPosterURL ?? "", title: movie.titleCZ ?? "", frameWidth: 150, frameHeight: 200)
                            Text("\(movie.imgPosterURL)")
                        }
                    }
                }
                .padding(.horizontal)
            }
        }
        .task {
            await model.fetchMoviessData()
        }
    }
}

// MARK: - PREVIEW
#Preview {
    NavigationView {
        MoviesView()
        // Fetch data from API endpoint
            .environmentObject(MoviesObservableObject(moviesService: ProductionDataService()))

        // Mock data
        // .environmentObject(MoviesObservableObject(moviesService: MockDataService()))
    }
}
