//
//  MoviesObservableObject.swift
//  Div
//
//  Created by Pavla Beránková on 01.05.2024.
//

import Foundation

final class MoviesObservableObject: ObservableObject {
    @Published var movies: [Movie] = []

    private let moviesService: DataService
    init(moviesService: DataService) {
        self.moviesService = moviesService
    }

    @MainActor
    func fetchMoviesData() async {
        do {
            let resultMovies = try await moviesService.fetchData()
            self.movies = resultMovies
        } catch {
            print(error.localizedDescription)
        }
    }
}
