//
//  MarvelHerosDetailsViewModel.swift
//  MarvelHeros
//
//  Created by Vinayak Thite on 21/08/22.
//

import Foundation

class MarvelHerosDetailsViewModel: MarvelHerosDetailsViewModelProtocol {
    
    /// private `variable`
    private let apiManager: APIManagerProtocol
    private let navigator: MarvelHerosDetailsNavigatorProtocol
    private var herosList: MarvelHerosListModel
    
    
    /// `initializer`
    /// - Parameters:
    ///   - navigator: Profile  Navigation
    init(apiManager: APIManagerProtocol, navigator: MarvelHerosDetailsNavigatorProtocol, herosList: MarvelHerosListModel) {
        self.apiManager = apiManager
        self.navigator = navigator
        self.herosList = herosList
    }
    
   
    
}
