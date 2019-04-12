//
//  CetEthConfig.swift
//  App
//
//  Created by zgy on 2019/4/12.
//

import Vapor

struct CetEthConfig: Content {
    
    var policeAmount: Int64
    var policePrice: Double
    var policeTime: Int64 //单位秒
    
}
