import SwiftUI

struct InfoView: View {
    // MARK: - PROPERTIES

    // MARK: - BODY
    var body: some View {
        NavigationStack {
            Text("Info & kontakty")
            .navigationTitle(Div.info.title)
        }
    }
}

// MARK: - PREVIEW
#Preview {
    NavigationStack {
        InfoView()
    }
}
