//
//  MarvelHerosBuilder.swift
//  MarvelHeros
//
//  Created by Vinayak Thite on 21/08/22.
//

import UIKit

protocol MarvelHerosListBuilderProtocol {
    /// Build Profile stack
    /// - Returns: UIViewController
    func build(with navigator: MarvelHerosListNavigatorProtocol) -> UIViewController
}

struct MarvelHerosListBuilder: MarvelHerosListBuilderProtocol {
    
    /// API Manager
    let apiManager: APIManagerProtocol
    
    /// Build Profile stack
    func build(with navigator: MarvelHerosListNavigatorProtocol) -> UIViewController {

        return UIViewController()
    }
}
