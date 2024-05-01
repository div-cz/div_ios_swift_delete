import SwiftUI

struct MainView: View {
    // MARK: - PROPERTIES

    // MARK: - BODY
    var body: some View {
        NavigationStack {
            ScrollView(.vertical) {
                VStack(spacing: 30) {
                    RowScrollCardsView(headerTitle: "TOP Filmy", frameWidth: 150)
                    RowScrollCardsView(headerTitle: "TOP Knihy", frameWidth: 360)
                    RowScrollCardsView(headerTitle: "Komentáře", frameWidth: 200)
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
