//
//  loginResponse.swift
//  ios
//
//  Created by 이동연 on 26/10/2020.
//  Copyright © 2020 litong. All rights reserved.
//

import ObjectMapper

struct LoginResponse{
    var code: Int!
    var message: String!
    var isSuccess: Bool!
}

extension LoginResponse: Mappable{
    
    init?(map: Map) {
        
    }
    mutating func mapping(map: Map) {
        code <- map["code"]
        message <- map["message"]
        isSuccess <- map["isSuccess"]
        //tutorials <- map["result"]
    }
}
