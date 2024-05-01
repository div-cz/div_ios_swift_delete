//
//  APIManager.swift
//  Div
//
//  Created by Christián on 28/04/2024.
//

import Foundation

class MoviesApi {
    
    struct Movie: Codable {
        var movieID: Int
        var title: String
        var titleCZ: String
        var url: String
        var img: String
        var description: String
        var releaseYear: String
        var duration: Int
        var language: String
        var budget: Int
        var adult: String
        var popularity: String
        var idCsfd: String
        var idImdb: String
        var universumID: Int
        var averageRating: Int
        var lastUpdated: String
        var imgPoster: String
        
        
        enum CodingKeys: String, CodingKey {
            case movieID = "MovieID"
            case title = "Title"
            case titleCZ = "TitleCZ"
            case url = "URL"
            case img = "IMG"
            case description = "Description"
            case releaseYear = "ReleaseYear"
            case duration = "Duration"
            case language = "Language"
            case budget = "Budget"
            case adult = "Adult"
            case popularity = "Popularity"
            case idCsfd = "ID_Csfd"
            case idImdb = "ID_Imdb"
            case universumID = "UniversumID"
            case averageRating = "AverageRating"
            case lastUpdated = "LastUpdated"
            case imgPoster = "IMGposter"
        }
    }
    
    func getData() async {
        guard let url = URL(string: "https://fdk.cz/div/json/movies.php?limit=5")  else {
            print("Problem with geting data from url")
            return
        }
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            print("Have data! \(data)")
            guard let movies = try? JSONDecoder().decode(Movie.self, from: data) else {
                print("Cannot decode JSON")
                return
            }
            print("JSON returned! returned \(movies)")
            
        } catch {
            print(error.localizedDescription)
        }
    }
}
