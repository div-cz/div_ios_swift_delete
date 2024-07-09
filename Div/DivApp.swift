import SwiftUI
import UIKit

struct DivApp: App {
  var body: some Scene {
    WindowGroup {
        EmptyView()
//     RootView()
//        .environmentObject(Coordinator())
//        // Fetch data from API endpoint
//        .environmentObject(MoviesObservableObject(moviesService: ProductionDataService()))

        // Fetch mock data
        // .environmentObject(MoviesObservableObject(moviesService: MockDataService()))
    }
  }
}
