//
//  SearchBarView.swift
//  Div
//
//  Created by Pavla Beránková on 17.07.2024.
//

import SwiftUI

struct SearchBarView: View {
    // MARK: PROPERTIES
    @Binding var searchText: String

    // MARK: - BODY
    var body: some View {
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(
                        searchText.isEmpty ? Color.gray : Color.accentColor)
                TextField("Vyhledávání...", text: $searchText)
                Spacer()
                    .overlay(
                        Image(systemName: "xmark")
                            .padding()
                            .offset(x: 10) // enlarges the click area
                            .foregroundColor(Color.accentColor)
                            .opacity(searchText.isEmpty ? 0.0 : 1.0)
                            .onTapGesture {
                                searchText = ""
                            },
                        alignment: .trailing
                    )
            }
            .font(.body)
            //.padding(.horizontal)
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 3)
                    .fill(Color.gray.opacity(0.2))
                    .frame(maxWidth: .infinity)
                    .frame(height: 40)
                    //.padding(.horizontal)
                    .shadow(color: Color.white.opacity(0.15), radius: 1)
            )
    }
}

#Preview {
    SearchBarView(searchText: .constant(""))
}
