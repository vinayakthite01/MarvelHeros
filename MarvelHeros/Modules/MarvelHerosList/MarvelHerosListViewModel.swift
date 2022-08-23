//
//  MarvelHerosListViewModel.swift
//  MarvelHeros
//
//  Created by Vinayak Thite on 21/08/22.
//

import Foundation

class MarvelHerosListViewModel: MarvelHerosListViewModelProtocol {
    
    /// private `variable`
    private let apiManager: APIManagerProtocol?
    private let navigator: MarvelHerosListNavigatorProtocol?
    private var marvelHeroList: [MarvelHerosListModel]?
    var marvelHerosListResponder: ((MarvelHerosListUIUpdateCase) -> Void)?
    
    /// `initializer`
    /// - Parameters:
    ///   - navigator: Profile  Navigation
    init(apiManager: APIManagerProtocol, navigator: MarvelHerosListNavigatorProtocol) {
        self.apiManager = apiManager
        self.navigator = navigator
    }
    
    /// Get Top Headlines for the country selected by user
    /// - Parameter country: Country
    func getTopHeadlines(forCountry country:String) {
        apiManager?.getMarvelHeros(url: "", completion: { [weak self] result in
            switch result {
            case .success(let listModel):
                guard let model = listModel else { return }
                
                self?.marvelHerosListResponder?(.success(model: model))
            case .failure(let error):
                self?.marvelHerosListResponder?(.error(error: error))
            }
        })
    }
    
    /// Get Heros from the list
    /// - Returns: Heros Array
    func getMarvelHerosList() -> [MarvelHerosListModel]? {
        return marvelHeroList
    }
    
    
}
