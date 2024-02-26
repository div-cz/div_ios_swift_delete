import SwiftUI

struct MainView: View {

    // MARK: - BODY
    var body: some View {
        NavigationView {
            VStack {
                ScrollView(.horizontal) {


                }
            }
                .navigationTitle("Div.cz")
                .navigationBarTitleDisplayMode(.large)
        }
        .toolbar {
            loginButton
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
    NavigationView {
        MainView()
    }
}
