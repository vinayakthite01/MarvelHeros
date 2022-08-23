//
//  Coordinator.swift
//  MarvelHeros
//
//  Created by Vinayak Thite on 21/08/22.
//

import Foundation

// MARK: - Coordinator protocol
protocol Coordinator: AnyObject {
    /// Commanly required dependacies
    var dependencies: DependencyContainerProtocol { get }
    
    /// Navigation protocol
    var navigationController: MarvelHerosNavigationControllerProtocol { get }
    
    /// workflow
    func start()
}
