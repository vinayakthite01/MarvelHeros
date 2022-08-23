//
//  AppCoordinator.swift
//  MarvelHeros
//
//  Created by Vinayak Thite on 21/08/22.
//

import UIKit

// MARK: AppCoordinator protocol
protocol AppCoordinatorProtocol: Coordinator {
    
}

// MARK: AppCoordinator will be launched at the very beginning
final class AppCoordinator: AppCoordinatorProtocol {
    private var window: UIWindow
    private(set) var dependencies: DependencyContainerProtocol
    private(set) var navigationController: MarvelHerosNavigationControllerProtocol

    /// `initializer`
    /// - Parameters:
    ///   - window: app window
    ///   - dependencies: Dependency Container Object
    init(window: UIWindow, dependencies: DependencyContainerProtocol) {
        let navigationController: MarvelHerosNavigationControllerProtocol = MarvelHerosNavigationController()
        self.dependencies = dependencies
        window.rootViewController = navigationController as? MarvelHerosNavigationController
        window.makeKeyAndVisible()

        self.navigationController = navigationController
        self.window = window
    }

    /// start the flow
    func start() {
        Logger.log(Environment.serverURL)
        showMarvelHerosList()
    }
}

extension AppCoordinator {
    
    /// Initiate MarvelHerosList Coordinator
    func showMarvelHerosList() {
        let MarvelHerosListCoordinator = MarvelHerosListCoordinator(dependencies: dependencies, navigationController: navigationController)
        MarvelHerosListCoordinator.start()
    }
}
