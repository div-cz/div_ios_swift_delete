import SwiftUI

struct MainView: View {
  // MARK: - PROPERTIES
  
  // MARK: - BODY
  var body: some View {
    NavigationStack {
      ScrollView(.vertical) {
        VStack(spacing: 30) {
          RowScrollCardsView(headerTitle: "TOP Filmy")
          RowScrollCardsView(headerTitle: "TOP Knihy")
          RowScrollCardsView(headerTitle: "TOP Hry")
        }
        Spacer()
      }
      .scrollIndicators(.hidden)
      .padding(.horizontal)
      .navigationTitle(Div.app.title)
      .navigationBarTitleDisplayMode(.large)
      .toolbar {
        loginButton
      }
    }
  }
}

// MARK: - EXTENSION
extension MainView {
  private var loginButton: some ToolbarContent {
    ToolbarItem(placement: .topBarTrailing) {
      Button {
        
      } label: {
        HStack {
          Text("Přihlásit")
          Image(systemName: "person.crop.circle")
        }
      }
    }
  }
}

// MARK: - PREVIEW
#Preview {
  NavigationStack {
    MainView()
  }
}
