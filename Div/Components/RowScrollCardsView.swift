import SwiftUI

struct RowScrollCardsView: View {
    // MARK: - PROPERTIES
    let headerTitle: String


    // MARK: - BODY
    var body: some View {
        VStack(alignment: .leading) {
            Text(headerTitle)
            ScrollView(.horizontal) {
                HStack {
                    ForEach(1...6, id: \.self) { _ in
                            CardView()
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
        RowScrollCardsView(headerTitle: "Seznam filmů")
    }
    .padding(.horizontal)
}
