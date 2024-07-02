//
//  Profile.swift
//  easytime
//
//  Created by Matthew Davenport on 6/29/24.
//

import SwiftData
import Foundation

@Model
class Profile {
    var firstName: String = ""
    var lastName: String = ""
    var email: String?
    var gender: String?
    var phoneNumber: String?
    var company: String?
    
    init(firstName: String = "", lastName: String = "", email: String? = nil, gender: String? = nil, phoneNumber: String? = nil, company: String? = nil) {
        self.firstName = firstName
        self.lastName = lastName
        self.email = email
        self.gender = gender
        self.phoneNumber = phoneNumber
        self.company = company
    }
}
