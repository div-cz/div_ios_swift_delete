//
//  TripleRowScrollCardView.swift
//  Div
//
//  Created by Pavla Beránková on 16.07.2024.
//

import SwiftUI

struct TripleRowScrollCardView: View {
    // MARK: - PROPERTIES
    @EnvironmentObject var coordinator: Coordinator
    let headerTitle: String
    let frameWidth: CGFloat

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
                LazyHStack(alignment: .top) {
                    ForEach(1...12, id: \.self) { _ in
                        VStack(alignment: .leading) {
                            ForEach(1...3, id: \.self) { _ in
                                HStack(alignment: .top) {
                                    CardView(image: "https://image.tmdb.org/t/p/w300_and_h450_bestv2//gh4cZbhZxyTbgxQPxD0dOudNPTn.jpg",
                                             title: "Spiderman",
                                             frameWidth: 50,
                                             frameHeight: 80
                                    )
                                    VStack(alignment: .leading) {
                                        Text("Spiderman")
                                        Text("2020")
                                    }
                                    Spacer()
//                                    Text("50%")
//                                        .padding(.horizontal)
//                                        .font(.headline)
                                }
                            }
                        }
                    }
                }
                .scrollTargetLayout()

            }
            .scrollIndicators(.hidden)
            .scrollTargetBehavior(.viewAligned)
        }
    }
}

#Preview {
    TripleRowScrollCardView(headerTitle: "Top Filmy", frameWidth: 140)
        .environmentObject(Coordinator())
}
