//
//  PostData.swift
//  Hacker News
//
//  Created by Apple on 01/05/24.
//

import Foundation

struct Results : Codable {
    let hits : [Posts]
}

struct Posts : Codable, Identifiable {
    
    var id : String{
        return objectID
    }
    
    let objectID : String
    let points : Int
    let title : String
    let url : String?
}
