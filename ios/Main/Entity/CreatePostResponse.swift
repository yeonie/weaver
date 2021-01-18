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
    var category : Categroy!
    //    let Personality: OwnTypeChoiceViewController
    //    Personality.personality = personality
}

extension CreatePostResponse: Mappable{
    
    init?(map: Map) {
        
    }
    mutating func mapping(map: Map) {
        title <- map["title"]
        content <- map["content"]
        category <- map["category"]//이케하면되녀?아ㅓㄴㄷ
//        id <- map["id"] //<- 이거 잘못만듬
        //tutorials <- map["result"]
    }
}

struct Categroy {
    var id: String!
}
extension Categroy: Mappable {
    init?(map: Map) {
    }
    mutating func mapping(map: Map) {
        id <- map["id"]
    }
}
