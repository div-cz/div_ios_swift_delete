import SwiftUI

struct BooksView: View {
  // MARK: - PROPERTIES
  
  // MARK: - BODY
  var body: some View {
    NavigationStack {
      Text("Knihy")
    }
  }
}

// MARK: - PREVIEW
#Preview {
  NavigationStack {
    BooksView()
  }
}
