import SwiftUI

struct CharactersView: View {
    // MARK: - PROPERTIES

    // MARK: - BODY
    var body: some View {
        NavigationStack {
            Text("Postavy")
                .navigationTitle(Div.characters.title)
        }
    }
}

// MARK: - PREVIEW
#Preview {
    NavigationStack {
        CharactersView()
    }
}
