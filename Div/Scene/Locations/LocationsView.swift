//
//  LocationsView.swift
//  Div
//
//  Created by Pavla Beránková on 06.05.2024.
//

import SwiftUI

struct LocationsView: View {
    var body: some View {
        NavigationStack {
            Text("Lokality")
                .navigationTitle(Div.locations.title)
        }
    }
}

#Preview {
    LocationsView()
}
