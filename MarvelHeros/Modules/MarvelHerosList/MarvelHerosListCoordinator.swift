//
//  MarvelHerosListCoordinator.swift
//  MarvelHeros
//
//  Created by Vinayak Thite on 21/08/22.
//

import Foundation

protocol MarvelHerosListCoordinatorProtocol: Coordinator {
    
}

class MarvelHerosListCoordinator: MarvelHerosListCoordinatorProtocol {
    
    /// private `variables`
    private(set) var dependencies: DependencyContainerProtocol
    private(set) var navigationController: MarvelHerosNavigationControllerProtocol
    private let marvelHerosListBuilder: MarvelHerosListBuilder
    
    /// `initializer`
    /// - Parameters:
    ///   - dependencies: Dependency Container Object
    ///   - navigationController: MWHNavigation Controller
    init(dependencies: DependencyContainerProtocol,
         navigationController: MarvelHerosNavigationControllerProtocol) {
        self.dependencies = dependencies
        self.navigationController = navigationController
        self.marvelHerosListBuilder = MarvelHerosListBuilder(apiManager: dependencies.apiManager)
    }

    /// start the flow
    func start() {
        let viewController = marvelHerosListBuilder.build(with: self)
        navigationController.push(viewController: viewController, animated: true)
    }
}

extension MarvelHerosListCoordinator: MarvelHerosListNavigatorProtocol {
    func showMarvelHeroDetails(forHerosList herosList: MarvelHerosListModel) {
        let marvelHerosDetailsCoordinator = MarvelHerosDetailsCoordinator(dependencies: dependencies,
                                                            navigationController: navigationController,
                                                                          heroDetails: herosList)
        marvelHerosDetailsCoordinator.start()
    }
}
