//
//  Stopwatches.swift
//  easytime
//
//  Created by Matthew Davenport on 6/28/24.
//

import Foundation

class Stopwatches: ObservableObject {
    @Published private(set) var timers = [Stopwatch]()
    
    init() {
        self.timers.append(Stopwatch())
    }
    
    func add() {
        self.timers.append(Stopwatch())
    }
    
    func delete(indexSet: IndexSet) {
        self.timers.remove(atOffsets: indexSet)
    }
}
