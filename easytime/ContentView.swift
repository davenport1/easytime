//
//  ContentView.swift
//  easytime
//
//  Created by Matthew Davenport on 6/28/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ClientsView()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Clients")
            }
            PayperiodView()
                .tabItem {
                    Image(systemName: "calendar")
                    Text("Pay Periods")
            }
            DashboardView()
                .tabItem {
                    Image(systemName: "gauge")
                    Text("Dashboard")
            }
            ReportsView()
                .tabItem {
                    Image(systemName: "doc.plaintext")
                    Text("Reports")
            }
            SettingsView()
                .tabItem {
                    Image(systemName: "gear")
                    Text("Settings")
            }
        }
    }
}

#Preview {
    ContentView()
}
