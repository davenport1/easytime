//
//  DashboardView.swift
//  easytime
//
//  Created by Matthew Davenport on 6/28/24.
//

import SwiftUI

struct DashboardView: View {
    @StateObject var stopWatch = Stopwatch()
    
    var body: some View {
        VStack {
            WelcomeView()
            
            Divider()
            
            StopwatchView(stopwatch: stopWatch)
            
            Divider()
            
            PayperiodSnapshotView()
            
            Divider()
        }
    }
}

#Preview {
    DashboardView()
}
