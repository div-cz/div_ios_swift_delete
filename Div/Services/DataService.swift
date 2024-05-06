//
//  DataService.swift
//  Div
//
//  Created by Pavla Beránková on 01.05.2024.
//

import Foundation

protocol DataService {
    func fetchData() async throws -> [Movie]
}

class ProductionDataService: DataService {
    func fetchData() async throws -> [Movie] {
        let session = URLSession.shared
        let url = URL(string: MoviesEndpoint.urlApi.rawValue)
        guard let url = url else {
            throw APIError.invalidURL
        }

        var request = URLRequest(url: url)
        request.httpMethod = "GET"

        let (data, response) = try await session.data(for: request)

        guard let httpResponse = response as? HTTPURLResponse else {
            print(response.description)
            throw APIError.invalidResponse
        }

                switch httpResponse.statusCode {
                case 200:
                    // Úspěšná odpověď
                    do {
                        return try JSONDecoder().decode([Movie].self, from: data)
                    } catch {
                        print("Error decode: \(error)")
                        throw APIError.decodingError(error)
                    }
                case 400:
                    // Bad Request
                    throw APIError.badRequest
                case 401:
                    // Neautorizovaný přístup
                    throw APIError.unauthorized
                case 403:
                    // Přístup zakázán
                    throw APIError.forbidden
                case 404:
                    // Nenalezeno
                    throw APIError.notFound
                case 500...599:
                    // Serverové chyby
                    throw APIError.serverError
                default:
                    // Ostatní chyby
                    throw APIError.unknown
                }
    }
}

class MockDataService: DataService {
    func fetchData() async throws -> [Movie] {
        Movies.mock.movies
    }
}

enum APIError: Error {
    case invalidURL, invalidResponse, decodingError(Error)
    case badRequest, unauthorized, forbidden, notFound, serverError, unknown
}
