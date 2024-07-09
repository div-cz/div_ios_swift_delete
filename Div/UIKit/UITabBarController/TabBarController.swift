//
//  TabBarController.swift
//  Div
//
//  Created by Pavla Beránková on 05.07.2024.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupTabs()
    }

    // MARK: Tab setup
    private func setupTabs() {
        let home = createNavigation(with: "Div.cz", and: UIImage(systemName: "square.grid.2x2.fill"), viewController: HomeViewController())

        let movies = createNavigation(with: "Filmy", and: UIImage(systemName: "movieclapper"), viewController: MoviesViewController())

        let books = createNavigation(with: "Knihy", and: UIImage(systemName: "books.vertical"), viewController: BooksViewController())

        let games = createNavigation(with: "Hry", and: UIImage(systemName: "gamecontroller"), viewController: GamesViewController())

        let characters = createNavigation(with: "Postavy", and: UIImage(systemName: "person"), viewController: CharactersViewController())

        let locations = createNavigation(with: "Lokality", and: UIImage(systemName: "map"), viewController: LocationsViewController())

        setViewControllers([home, movies, books, games, characters, locations
        ], animated: true)
    }

    private func createNavigation(with title: String, and image: UIImage?, viewController: UIViewController) -> UINavigationController {
        let navigationTab = UINavigationController(rootViewController: viewController)
        navigationTab.tabBarItem.title = title
        navigationTab.tabBarItem.image = image

        // Title on top - navigation title
        navigationTab.navigationItem.title = title

        navigationTab.viewControllers[0]

        return navigationTab
    }
}
