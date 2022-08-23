//
//  MarvelHerosListProtocol.swift
//  MarvelHeros
//
//  Created by Vinayak Thite on 21/08/22.
//

import Foundation

protocol MarvelHerosListViewModelProtocol {
    var marvelHerosListResponder: ((MarvelHerosListUIUpdateCase) -> Void)? { get set }
    
    /// Navigate to Hero details
    /// - Parameter index: index for the cell.
    func redirectToMarvelHeroDetails(forIndex index: Int)
}

protocol MarvelHerosListNavigatorProtocol {
    func showMarvelHeroDetails(forHerosList herosList: MarvelHerosListModel)
}

enum MarvelHerosListUIUpdateCase {
    case success(model: MarvelHerosListModel)
    case error(error: APIError)
}
