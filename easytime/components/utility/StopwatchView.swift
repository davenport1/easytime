//
//  StopwatchView.swift
//  easytime
//
//  Created by Matthew Davenport on 6/28/24.
//

import SwiftUI

struct StopwatchView: View {
    private static var formatter: DateComponentsFormatter = {
        let formatter = DateComponentsFormatter()
        formatter.unitsStyle = .positional
        formatter.allowedUnits = [ .hour, .minute, .second ]
        formatter.zeroFormattingBehavior = [ .pad ]
        formatter.allowsFractionalUnits = true
    
        return formatter
    }()
    
    private var playPauseImage: Image {
        return Image(systemName: self.stopwatch.isRunning ? "pause" : "play")
    }
    
    private func elapsedTimeStr(timeInterval: TimeInterval) -> String {
        return StopwatchView.formatter.string(from: timeInterval) ?? ""
    }
    
    @ObservedObject var stopwatch: Stopwatch
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                
                Text(self.elapsedTimeStr(timeInterval: self.stopwatch.elapsedTime)).font(.system(.title, design: .monospaced))
                    .fontWeight(.bold)
                
                
                Spacer()
            }
            .padding()
            
            HStack {
                
                Button(action: { self.stopwatch.isRunning.toggle() }) {
                    self.playPauseImage.imageScale(.large)
                }.padding()
                
                
                Button(action: { self.stopwatch.reset() }) {
                    Image(systemName: "gobackward").imageScale(.large) }
                .disabled(self.stopwatch.isRunning)
                .padding()
                
            }
        }
    }
}
    

#Preview {
    StopwatchView(stopwatch: Stopwatch())
}
