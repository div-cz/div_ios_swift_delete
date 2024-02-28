import SwiftUI

struct MainView: View {

    // MARK: - BODY
    var body: some View {
        NavigationStack {
            ScrollView(.vertical) {
                VStack(spacing: 30) {
                    RowScrollCardsView(headerTitle: "Seznam filmů")
                    RowScrollCardsView(headerTitle: "Výročí osobností")
                    RowScrollCardsView(headerTitle: "Test")
                }
                    Spacer()
                }
            .scrollIndicators(.hidden)
                .padding(.horizontal)
                .navigationTitle("Div.cz")
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
