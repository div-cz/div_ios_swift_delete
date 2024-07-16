//
//  OthersListView.swift
//  Div
//
//  Created by Pavla Beránková on 16.07.2024.
//

import SwiftUI

struct OthersListView: View {
    @EnvironmentObject var coordinator: Coordinator

    var body: some View {
            List {
                Section {
                    NavigationLink {
                        coordinator.charactersScene
                    } label: {
                        HStack {
                            Image(systemName: "person")
                            Text("Postavy")
                        }
                    }

                    NavigationLink {
                        coordinator.locationsScene
                    } label: {
                        HStack {
                            Image(systemName: "map")
                            Text("Lokality")
                        }
                    }
                }

                Section {
                    Link(destination: URL(string: "https://div.cz/prihlaseni/")!,
                         label: {
                        HStack {
                            Image(systemName: "person.circle")
                            Text("Přihlásit / Registrovat")
                        }
                    })
                }

                Section {
                    NavigationLink {
                        Text("O čem to je?")
                    } label: {
                        HStack {
                            Image(systemName: "info.circle")
                            Text("O čem to je?")
                        }
                    }
                    NavigationLink {
                        Text("Kontakty")
                    } label: {
                        HStack {
                            Image(systemName: "person.text.rectangle")
                            Text("Kontakty")
                        }
                    }

                    NavigationLink {
                        Text("Náš tým.")
                    } label: {
                        HStack {
                            Image(systemName: "person.2")
                            Text("Náš tým")
                        }
                    }
                }
            }
            .listStyle(.grouped)
    }
}

#Preview {
    OthersListView()
        .preferredColorScheme(.dark)
        .environmentObject(Coordinator())
}
