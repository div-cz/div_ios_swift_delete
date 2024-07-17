//
//  BigCardView.swift
//  Div
//
//  Created by Pavla Beránková on 17.07.2024.
//

import SwiftUI

struct BigCardView: View {
    let image: String
    let mockText = [
        "Tenkrát na Západě: Mistrovské Dílo Sergio Leoneho",
        "Shannen Doherty se stala nesmrtelnou.",
        "Catwoman: The Feline Femme Fatale"
    ]

    var body: some View {
            TabView {
                ForEach(mockText, id: \.self) { title in
                    ZStack(alignment: .topLeading) {
                        AsyncImage(url: URL(string: image)) { image in
                            image.image?.resizable()
                        }
                        Text(title)
                            .bold()
                            .lineLimit(3)
                            .foregroundStyle(.white)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.subheadline)
                            .padding(8)
                            .background(
                                Color.black.opacity(0.7)
                            )
                            .padding([.top, .leading])
                    }

                }
            }
            // .frame(width: .infinity)
            .frame(height: 240)
        .tabViewStyle(.page)

    }
}

#Preview {
    BigCardView(image: "https://picsum.photos/500/300")
}
