import SwiftUI

struct MainView: View {

    // MARK: - BODY
    var body: some View {
        NavigationStack {
            ScrollView(.vertical) {
                VStack(spacing: 30) {
                    listOfMoview
                    listOfCelebrities
                    testList
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

    private var listOfMoview: some View {
        VStack(alignment: .leading) {
            Text("Seznam filmů")
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

    private var listOfCelebrities: some View {
        VStack(alignment: .leading) {
            Text("Výročí osobností")
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

    private var testList: some View {
        VStack(alignment: .leading) {
            Text("Test")
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
    NavigationStack {
        MainView()
    }
}
