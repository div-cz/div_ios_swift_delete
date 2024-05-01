import SwiftUI

@main
struct DivApp: App {
  var body: some Scene {
    WindowGroup {
     RootView()
        .environmentObject(Coordinator())
        // Fetch data from API endpoint
        .environmentObject(MoviesObservableObject(moviesService: ProductionDataService()))
        // Fetch mock data
        // .environmentObject(MoviesObservableObject(moviesService: MockDataService()))
    }
  }
}
