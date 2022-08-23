//
//  Environment.swift
//  MarvelHeros
//
//  Created by Vinayak Thite on 21/08/22.
//

import Foundation

public enum Environment {
    // MARK: - Keys
    enum Keys {
        enum Plist {
            static let serverURL = "SERVER_URL"
            static let publicApiKey = "PUBLIC_API_KEY"
            static let privateApiKey = "PRIVATE_API_KEY"
        }
    }
    
    // MARK: - Plist
    private static let infoDictionary: [String: Any] = {
        guard let dict = Bundle.main.infoDictionary else {
            fatalError("*** Plist file not found ***")
        }
        return dict
    }()
    
    // MARK: - Plist values
    static let serverURL: String = {
        guard let serverURLstring = Environment.infoDictionary[Keys.Plist.serverURL] as? String,
              serverURLstring.count > 0 else {
            fatalError("*** Server URL not set in plist for this environment ***")
        }
        return serverURLstring
    }()
    
    static let publicApiKey: String = {
        guard let publicApiKey = Environment.infoDictionary[Keys.Plist.publicApiKey] as? String else {
            fatalError("*** API Key not set in plist for this environment ***")
        }
        return publicApiKey
    }()
    
    static let privateApiKey: String = {
        guard let privateApiKey = Environment.infoDictionary[Keys.Plist.privateApiKey] as? String else {
            fatalError("*** API Key not set in plist for this environment ***")
        }
        return privateApiKey
    }()
}
