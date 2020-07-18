//
//  Post Data.swift
//  Hacker News
//
//  Created by Ebubechukwu Dimobi on 18.07.2020.
//  Copyright © 2020 blazeapps. All rights reserved.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    
    var id: String {
        return objectID
    }
    
    let objectID: String
    let points: Int
    let title: String
    let url: String?
    
    
}
