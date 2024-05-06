//
//  Book.swift
//  Div
//
//  Created by Pavla Beránková on 01.05.2024.
//

import Foundation

struct Movie: Codable, Identifiable {
    var id: Int
    var title: String?
    var titleCZ: String?
    var url: String?
    var oldURL: String?
    var changeURL: String?
    var img: String?
    var imgPoster: String?
    var description: String?
    var releaseYear: String?
    var duration: Int?
    var language: String?
    var budget: Int?
    var adult: String?
    var popularity: String?
    var idCsfd: String?
    var idImdb: String?
    var idDiv: String?
    var averageRating: String?
    var lastUpdated: String?
    var universumID: Int?

    // COMPUTED PROPERTIES
    var imgPosterURL: String? {
//        guard let image = imgPoster else {
//            return nil
//        }
//        if image == "noimg.png" {
//            return nil
//        } else {
//            return MoviesEndpoint.schemaImgPoster.rawValue + image
//        }

        if let imgPoster = imgPoster {
            return MoviesEndpoint.schemaImgPoster.rawValue + imgPoster
        }
        return nil
    }

    enum CodingKeys: String, CodingKey {
        case id = "MovieID"
        case title = "Title"
        case titleCZ = "TitleCZ"
        case url = "URL"
        case oldURL = "OldURL"
        case changeURL = "ChangeURL"
        case img = "IMG"
        case imgPoster = "IMGposter"
        case description = "Description"
        case releaseYear = "ReleaseYear"
        case duration = "Duration"
        case language = "Language"
        case budget = "Budget"
        case adult = "Adult"
        case popularity = "Popularity"
        case idCsfd = "ID_Csfd"
        case idImdb = "ID_Imdb"
        case idDiv = "ID_DIV"
        case averageRating = "AverageRating"
        case lastUpdated = "LastUpdated"
        case universumID = "UniversumID"
    }
}
