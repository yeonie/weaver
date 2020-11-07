//
//  SignUpResponse.swift
//  ios
//
//  Created by 이동연 on 30/10/2020.
//  Copyright © 2020 Jerry Jung. All rights reserved.
//

import ObjectMapper

struct SignUpResponse{
    
    var username : String!
    var password : String!
    var nickname : String!
    var personality : String!
//    let Personality: OwnTypeChoiceViewController
//    Personality.personality = personality
}

extension SignUpResponse: Mappable{
    
    init?(map: Map) {
        
    }
    mutating func mapping(map: Map) {
        username <- map["username"]
        password <- map["password"]
        nickname <- map["nickname"]
        personality <- map["personality"]
        //tutorials <- map["result"]
    }
}
