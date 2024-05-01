//
//  MoviesViewModel.swift
//  Div
//
//  Created by Pavla Beránková on 01.05.2024.
//

import SwiftUI

struct MoviesViewModel: DynamicProperty {
    @EnvironmentObject private var moviesObservableObject: MoviesObservableObject

    var movies: [Movie] {
        moviesObservableObject.movies
    }

    func fetchMoviessData() async {
        await moviesObservableObject.fetchMoviesData()
    }
}
