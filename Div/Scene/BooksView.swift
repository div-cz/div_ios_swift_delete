import SwiftUI

struct BooksView: View {
  // MARK: - PROPERTIES
  
  // MARK: - BODY
  var body: some View {
    NavigationStack {
      Text("Knihy")
        .navigationTitle(Div.books.title)
    }
  }
}

// MARK: - PREVIEW
#Preview {
  NavigationStack {
    BooksView()
  }
}
