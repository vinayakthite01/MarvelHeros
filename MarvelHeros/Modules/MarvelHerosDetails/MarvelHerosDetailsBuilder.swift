//
//  MarvelHerosDetailsBuilder.swift
//  MarvelHeros
//
//  Created by Vinayak Thite on 21/08/22.
//

import Foundation
import UIKit

protocol MarvelHerosDetailsBuilderProtocol {
    /// Build Profile stack
    /// - Parameters:
    ///   - navigator: navigator Protocol instance
    ///   - heros: heros
    /// - Returns: MarvelHerosDetails View Controller
    func build(with navigator: MarvelHerosDetailsNavigatorProtocol, herosList: MarvelHerosListModel) -> UIViewController
}

struct MarvelHerosDetailsBuilder: MarvelHerosDetailsBuilderProtocol {

    /// API Manager
    let apiManager: APIManagerProtocol
    
    /// Build Profile stack
    func build(with navigator: MarvelHerosDetailsNavigatorProtocol, herosList: MarvelHerosListModel) -> UIViewController {

        return UIViewController()
    }
}
