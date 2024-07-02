//
//  easytimeApp.swift
//  easytime
//
//  Created by Matthew Davenport on 6/28/24.
//

import SwiftData
import SwiftUI

@main
struct easytimeApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: [Client.self, DailyPay.self, Profile.self])
    }
}
