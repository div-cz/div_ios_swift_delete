import SwiftUI

struct RowScrollCardsView: View {
    // MARK: - PROPERTIES
    let headerTitle: String
    let frameWidth: CGFloat

    // MARK: - BODY
    var body: some View {
        VStack(alignment: .leading) {
            Text(headerTitle)
            ScrollView(.horizontal) {
                HStack {
                    ForEach(1...6, id: \.self) { _ in
                        CardView(frameWidth: frameWidth)
                        }
                }
            }
            .scrollIndicators(.hidden)
        }
    }
}

// MARK: - PREVIEW
#Preview {
    VStack {
        RowScrollCardsView(headerTitle: "Seznam filmů", frameWidth: 320)
    }
    .padding(.horizontal)
}
