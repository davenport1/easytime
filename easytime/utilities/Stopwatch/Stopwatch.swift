//
//  StopWatch.swift
//  easytime
//
//  Created by Matthew Davenport on 6/28/24.
//

import Combine
import Foundation

class Stopwatch: ObservableObject, Identifiable {
    private var startTime: Date?
    private var accumulatedTime: TimeInterval = 0
    private var timer: Cancellable?
    let id = UUID()
    
    @Published var isRunning: Bool = false {
        didSet {
            if self.isRunning {
                self.start()
            } else {
                self.stop()
            }
        }
    }
    
    @Published private(set) var elapsedTime: TimeInterval = 0
    
    private func start() -> Void {
        self.startTime = Date()
        self.timer?.cancel()
        self.timer = Timer.publish(every: 0.5, on: .main, in: .common)
            .autoconnect()
            .sink { _ in
                self.elapsedTime = self.getElapsedTime()
            }
    }
    
    private func stop() -> Void {
        self.timer?.cancel()
        self.timer = nil
        self.accumulatedTime = self.getElapsedTime()
        self.startTime = nil
    }
    
    func reset() -> Void {
        self.accumulatedTime = 0
        self.elapsedTime = 0
        self.startTime = nil
        self.isRunning = false
    }
    
    func getElapsedTime() -> TimeInterval {
        return -(self.startTime?.timeIntervalSinceNow ?? 0) + self.accumulatedTime
    }
}
