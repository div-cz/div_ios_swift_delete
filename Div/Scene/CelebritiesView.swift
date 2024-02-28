import SwiftUI

struct CelebritiesView: View {
    // MARK: - PROPERTIES

    // MARK: - BODY
    var body: some View {
        NavigationStack {
            Text("Osobnosti")
                .navigationTitle("Osobnosti")
        }
    }
}

// MARK: - PREVIEW
#Preview {
    NavigationStack {
        CelebritiesView()
    }
}
