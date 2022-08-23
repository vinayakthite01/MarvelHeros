//
//  APIManager.swift
//  MarvelHeros
//
//  Created by Vinayak Thite on 21/08/22.
//

import Foundation


/// `API (Endevour & Middleware) Manager`
final class APIManager {
    /// Router to call custom get/post request via Endevour
    private let serverRouter: Router<ServerEndpoint>
    // Router to call Direct URLs
    private let directUrlRouter: DirectURLRouter<DirectURLEndpoint>
    /// Session Manager
    private let sessionManager: SessionManagerProtocol


    /// `initializer`
    /// - Parameters:
    ///   - sessionManager: Session Manager
    init(sessionManager: SessionManagerProtocol) {
        self.sessionManager = sessionManager
        self.serverRouter = Router<ServerEndpoint>()
        self.directUrlRouter = DirectURLRouter<DirectURLEndpoint>()
    }
}

// ----------------------------------
// MARK: - APIManager Protocol Request -
//

/// `APIManager Protocol`
protocol APIManagerProtocol: AnyObject {
    /// `MarvelHeros` API
    func getMarvelHeros(url:String, completion: @escaping (Result<MarvelHerosListModel?, APIError>) -> Void)
}

extension APIManager: APIManagerProtocol {
    /// `MarvelHeros` API
    func getMarvelHeros(url:String, completion: @escaping (Result<MarvelHerosListModel?, APIError>) -> Void) {
        
        directUrlRouter.request(.loadDirectURLDetails(url: url), decode: { json -> MarvelHerosListModel? in
            guard let results = json as? MarvelHerosListModel? else { return  nil }
            return results
        }, completion: completion)
    }
}
