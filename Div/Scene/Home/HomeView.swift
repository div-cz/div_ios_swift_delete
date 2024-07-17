import SwiftUI

struct HomeView: View {
    // MARK: - PROPERTIES
    @Binding var searchText: String

    // MARK: - BODY
    var body: some View {
        NavigationStack {
            SearchBarView(searchText: $searchText)
                .padding(.top, 0)
                .padding(.bottom, 10)
            ScrollView(.vertical) {
                VStack(spacing: 40) {
                    VStack(alignment: .leading, spacing: 30) {
                        BigCardView(image: "https://picsum.photos/500/300")
                        HStack {
                            Rectangle()
                                .frame(width: 5)
                                .foregroundColor(.red)
                            Text("Filmy")
                                .font(.title2)
                                .bold()
                        }
                        .padding(.horizontal)
                        TripleRowScrollCardView(headerTitle: "Právě v kinech", frameWidth: 100)
                            .padding(.horizontal)
                        Divider()
                        RowScrollCardsView(
                            title: "TOP Filmy",
                            headerTitle: "Nejsledovanější filmy",
                            frameWidth: 140
                        )
                        .padding(.horizontal)
                    }

                Rectangle()
                        .frame(maxWidth: .infinity)
                        .frame(height: 5)
                        .foregroundColor(.gray.opacity(0.3))

                    VStack(alignment: .leading, spacing: 30) {
                    HStack {
                        Rectangle()
                            .frame(width: 5)
                            .foregroundColor(.green)
                        Text("Knihy")
                            .font(.title2)
                            .bold()
                    }
                    .padding(.horizontal)
                    TripleRowScrollCardView(headerTitle: "Knižní novinky", frameWidth: 100)
                        .padding(.horizontal)
                        Divider()
                    RowScrollCardsView(
                        title: "Nejčtenější knihy",
                        headerTitle: "Nejčtenější knihy",
                        frameWidth: 140
                    )
                    .padding(.horizontal)
                }
                    Rectangle()
                            .frame(maxWidth: .infinity)
                            .frame(height: 5)
                            .foregroundColor(.gray.opacity(0.3))
                }
            }
            .scrollIndicators(.hidden)
        }
    }
}

// MARK: - EXTENSION
extension HomeView {
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
        HomeView(searchText: .constant(""))
            .environmentObject(Coordinator())
            .preferredColorScheme(.dark)
    }
}
