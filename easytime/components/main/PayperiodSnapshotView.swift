//
//  PayperiodSnapshotView.swift
//  easytime
//
//  Created by Matthew Davenport on 6/28/24.
//

import SwiftUI

struct PayperiodSnapshotView: View {
    enum selectedTimeperiod: String, CaseIterable {
        case daily = "Daily"
        case weekly = "Weekly"
        case monthly = "Monthly"
    }
    
    @State private var selectedPeriod = selectedTimeperiod.daily
    
    var body: some View {
        VStack {
            Picker(selection: $selectedPeriod, label: Text("Period")) {
                ForEach(selectedTimeperiod.allCases, id: \.self) { period in
                    Text(period.rawValue).tag(period)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            
            
            // Information display
            HStack {
                VStack {
                    Text("Total Hours")
                    Text("40")
                        .font(.title)
                        .fontWeight(.bold)
                }
                
                Spacer()
    
                
                VStack {
                    Text("Overtime Hours")
                    Text("5")
                        .font(.title)
                        .fontWeight(.bold)
                }
                
                Spacer()
                
                VStack {
                    Text("Pay")
                    Text("$500")
                        .font(.title)
                        .fontWeight(.bold)
                }
            }
            .padding(.top, 50)
        }
        .padding()
        
    }
}

#Preview {
    PayperiodSnapshotView()
}
