import SwiftUI

struct RowScrollCardsView: View {
    // MARK: - PROPERTIES
    @EnvironmentObject var coordinator: Coordinator
    let title: String
    let headerTitle: String
    let frameWidth: CGFloat

    // MARK: - BODY
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(headerTitle)
                    .font(.title3)
                    .bold()
                Spacer()
                NavigationLink {
                    coordinator.moviesScene
                } label: {
                    HStack(alignment: .center, spacing: 5) {
                        Text("Další")
                        Image(systemName: "greaterthan")
                            .font(.caption)
                    }
                    .font(.callout)
                        .foregroundStyle(.blue)
                }
            }

            ScrollView(.horizontal) {
                HStack {
                    ForEach(1...6, id: \.self) { _ in
                        CardView(
                            image: "https://image.tmdb.org/t/p/w300_and_h450_bestv2//gh4cZbhZxyTbgxQPxD0dOudNPTn.jpg",
                            title: title,
                            frameWidth: frameWidth, frameHeight: 200)
                        }
                }
                .scrollTargetLayout()
            }
            .scrollIndicators(.hidden)
            .scrollTargetBehavior(.viewAligned)
        }
    }
}

// MARK: - PREVIEW
#Preview {
    VStack {
        RowScrollCardsView(title: "Detail filmu", headerTitle: "Seznam filmů", frameWidth: 150)
    }
    .padding(.horizontal)
    .environmentObject(Coordinator())
}
