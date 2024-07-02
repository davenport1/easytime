//
//  Invoice.swift
//  easytime
//
//  Created by Matthew Davenport on 6/29/24.
//

import SwiftData
import Foundation

@Model
class DailyPay {
    var regularHours: Float = 0.0
    var payrate: Float = 0.0
    var overtimeHours: Float?
    var doubletimeHours: Float?
    
    init(regularHours: Float = 0.0, payrate: Float = 0.0, overtimeHours: Float? = nil, doubletimeHours: Float? = nil) {
        self.regularHours = regularHours
        self.payrate = payrate
        self.overtimeHours = overtimeHours
        self.doubletimeHours = doubletimeHours
    }
}
