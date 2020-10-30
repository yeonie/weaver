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
    var password1 : String!
    var password2 : String!
    var personality : String!
//    let Personality: OwnTypeChoiceViewController
//    Personality.personality = personality
}

extension SignUpResponse: Mappable{
    
    init?(map: Map) {
        
    }
    mutating func mapping(map: Map) {
        username <- map["username"]
        password1 <- map["password1"]
        password2 <- map["password2"]
        personality <- map["personality"]
        //tutorials <- map["result"]
    }
}
