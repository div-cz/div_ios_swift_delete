//
//  Movies.swift
//  Div
//
//  Created by Pavla Beránková on 01.05.2024.
//

import Foundation

struct Movies: Codable {
    var movies: [Movie]
}

extension Movies {
    static let mock: Movies = Movies(
        movies: [
            Movie(
                id: 1,
                title: "Harry Potter",
                titleCZ: "Harry Potter",
                url: nil,
                oldURL: nil,
                changeURL: nil,
                img: nil,
                imgPoster: nil,
                description: """
Před deseti lety položili čarodějové Brumbál, Hagrid a McGonagallová na práh domu Vernona a Petunie Dursleyových miminko s jizvou na čele. Je to malý Harry Potter, syn Petuniiny zemřelé sestry. Dursleyovi se o něj sice starají, na rozdíl od vlastního syna Dudleyho mu však neprojevují příliš lásky. Když se blíží Harryho jedenácté narozeniny, zjistí ke svému překvapení, že dokáže mluvit s hadem. V den narozenin mu čaroděj Hagrid doručí dort a dopis. Harry se dozví, že jeho rodiče byli čarodějové a nezahynuli při obyčejné autonehodě, ale v boji se zlým Voldemortem. Jizvu na čele si odnesl z tohoto boje. Nyní má právo nastoupit do učení ve Škole kouzel a čar v Bradavicích. Hagrid mu pomůže nakoupit školní pomůcky, včetně kouzelnické hůlky, a potom ho pošle na nádraží, kde z tajného nástupiště 9 3/4 odjíždí expres do Bradavic. Ve vlaku se Harry skamarádí se sympatickou Hermionou a dobráckým Ronem. Společně se pak dostanou na prestižní kolej Nebelvíru. Díky mimořádnému talentu k létání se stane novým chytačem nebelvírského famfrpálového mužstva. Po zápasu čeká žáky Vánoční volno, kterého Harry, Ron a Hermiona využijí k pátrání po tajemství, které střeží v podzemí školy trojhlavý pes.
""",
                releaseYear: "2001",
                duration: 152,
                language: "en",
                budget: nil,
                adult: nil,
                popularity: nil,
                idCsfd: "id_csfd",
                idImdb: "id_imdb",
                idDiv: "id_div", 
                averageRating: "4.8",
                lastUpdated: nil,
                universumID: nil)
        ])
}

