//
//  CreatePost.swift
//  ios
//
//  Created by 이동연 on 04/11/2020.
//  Copyright © 2020 litong. All rights reserved.
//

import ObjectMapper

struct CreatePostResponse{
    
    var title : String!
    var content : String!
    var category : String!
    var id : String!
    //    let Personality: OwnTypeChoiceViewController
    //    Personality.personality = personality
}

extension CreatePostResponse: Mappable{
    
    init?(map: Map) {
        
    }
    mutating func mapping(map: Map) {
        title <- map["title"]
        content <- map["content"]
        category <- map["category"]
        id <- map["id"]
        //tutorials <- map["result"]
    }
}

