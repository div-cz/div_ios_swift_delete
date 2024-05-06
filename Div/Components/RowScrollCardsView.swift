import SwiftUI

struct RowScrollCardsView: View {
    // MARK: - PROPERTIES
    let title: String
    let headerTitle: String
    let frameWidth: CGFloat

    // MARK: - BODY
    var body: some View {
        VStack(alignment: .leading) {
            Text(headerTitle)
            ScrollView(.horizontal) {
                HStack {
                    ForEach(1...6, id: \.self) { _ in
                        CardView(image: "https://image.tmdb.org/t/p/w300_and_h450_bestv2//gh4cZbhZxyTbgxQPxD0dOudNPTn.jpg", title: title, frameWidth: frameWidth)
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
        RowScrollCardsView(title: "Detail filmu", headerTitle: "Seznam filmů", frameWidth: 150)
    }
    .padding(.horizontal)
}
