//
//  WelcomeView.swift
//  easytime
//
//  Created by Matthew Davenport on 6/28/24.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        HStack {
            Text("Hello, Andrew")
                .font(.largeTitle)
                .fontWeight(.heavy)
            Spacer()
        }
        .padding()
    }
}

#Preview {
    WelcomeView()
}
