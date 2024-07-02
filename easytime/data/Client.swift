//
//  Client.swift
//  easytime
//
//  Created by Matthew Davenport on 6/29/24.
//

import SwiftData
import Foundation

@Model
class Client {
    // var id: Int = 0 do we need an id?
    var name: String = ""
    //var phoneNumber: String?
    var payRate: Float = 0.0
    //var email: String?
    
    init(name: String = "", payRate: Float = 0.0) {
        self.name = name
        self.payRate = payRate
    }
}
