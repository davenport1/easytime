//
//  ClientsView.swift
//  easytime
//
//  Created by Matthew Davenport on 6/28/24.
//

import SwiftUI
import SwiftData

struct ClientsView: View {
    @Query var clients: [Client]
    @Environment(\.modelContext) var modelContext
    
    func addClients() {
        let paladin = Client(name: "Paladin", payRate: 40.0)
        let verizon = Client(name: "Verizon", payRate: 30.0)
        let anotha = Client(name: "Another", payRate: 25.0)
        modelContext.insert(paladin)
        modelContext.insert(verizon)
        modelContext.insert(anotha)
    }
    
    var body: some View {
        // Button("Add Clients", action: addClients)
        NavigationStack {
            List {
                ForEach(clients) { client in
                    VStack(alignment: .leading) {
                        Text(client.name)
                            .font(.headline)
                        
                        Text("$\(client.payRate.description)")
                    }
                }
            }
            .navigationTitle("Clients")
            .toolbar {
                Button("Add Clients", action: addClients)
            }
        }
    }
}

#Preview {
    ClientsView()
}
