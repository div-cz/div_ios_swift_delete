import SwiftUI

struct GamesView: View {
  // MARK: - PROPERTIES
  
  // MARK: - BODY
  var body: some View {
      NavigationStack {
          Text("Hry")
              .navigationTitle("Hry")
      }
  }
}

// MARK: - PREVIEW
#Preview {
    GamesView()
}
