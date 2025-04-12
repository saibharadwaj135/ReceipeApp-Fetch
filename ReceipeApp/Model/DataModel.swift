//
//  DataModel.swift
//  ReceipeApp
//
//  Created by Sai bharadwaj Adapa on 4/11/25.
//

import Foundation

struct DataModel:Codable{
    
    
    var recipes : [Receipes]

}

struct Receipes:Codable{
    var cuisine : String?
    var name : String?
    var photoUrlLarge : String?
    var photoUrlSmall : String?
    var uuid : String?
    var sourceUrl : String?
    var youtubeUrl : String?
    
    enum CodingKeys : String, CodingKey {
        case cuisine
        case name
        case photoUrlLarge = "photo_url_large"
        case photoUrlSmall = "photo_url_small"
        case uuid
        case sourceUrl = "source_url"
        case youtubeUrl = "youtube_url"
    }
}
