//
//  MarvelHerosDetailsCoordinator.swift
//  MarvelHeros
//
//  Created by Vinayak Thite on 21/08/22.
//

import Foundation

protocol MarvelHerosDetailsCoordinatorProtocol: Coordinator {
    
}

class MarvelHerosDetailsCoordinator: MarvelHerosListCoordinatorProtocol {
    
    /// private `variables`
    private(set) var dependencies: DependencyContainerProtocol
    private(set) var navigationController: MarvelHerosNavigationControllerProtocol
    private let marvelHeroDetailsBuilder: MarvelHerosDetailsBuilderProtocol
    private let heroDetails: MarvelHerosListModel
    
    /// `initializer`
    /// - Parameters:
    ///   - dependencies: Dependency Container Object
    ///   - navigationController: MWHNavigation Controller
    init(dependencies: DependencyContainerProtocol,
         navigationController: MarvelHerosNavigationControllerProtocol, heroDetails: MarvelHerosListModel) {
        self.dependencies = dependencies
        self.navigationController = navigationController
        self.marvelHeroDetailsBuilder = MarvelHerosDetailsBuilder(apiManager: dependencies.apiManager)
        self.heroDetails = heroDetails
    }

    /// start the flow
    func start() {
        let viewController = marvelHeroDetailsBuilder.build(with: self, herosList: heroDetails)
        navigationController.push(viewController: viewController, animated: true)
    }
}

extension MarvelHerosDetailsCoordinator: MarvelHerosDetailsNavigatorProtocol {

}
