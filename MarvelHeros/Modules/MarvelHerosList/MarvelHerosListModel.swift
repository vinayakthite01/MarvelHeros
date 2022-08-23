//
//  MarvelHerosListModel.swift
//  MarvelHeros
//
//  Created by Vinayak Thite on 21/08/22.
//

import Foundation

struct MarvelHerosListModel: Decodable {
//    {
//      "code": 200,
//      "status": "Ok",
//      "etag": "f0fbae65eb2f8f28bdeea0a29be8749a4e67acb3",
//      "data": {
//        "offset": 0,
//        "limit": 20,
//        "total": 30920,
//        "count": 20,
//        "results": [{array of objects}}]
//      }
//    }

    let code: Int?
    let status: String?
    let etag: String?
    let data: [DataModel]?
}

struct DataModel: Decodable {
    let results: [Results]?
    let total: Int?
    let count: Int?
}

struct Results: Decodable {
    
}

