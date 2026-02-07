//
//  MainView.swift
//  Greetings
//
//  Created by jyotirmoy_halder on 7/2/26.
//

import SwiftUI

// Portrait = Compact width, regular height
// iPad = Regular width, regular height

struct MainView: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    var isPortraitPhone: Bool {
        horizontalSizeClass == .compact && verticalSizeClass == .regular
    }
    
    var isIPad: Bool {
        horizontalSizeClass == .regular && verticalSizeClass == .regular
    }
    
    var body: some View {
        // Portrait mode?
        if isPortraitPhone || isIPad {
            GreetingsView()
        } else {
            // Landscape mode?
            LandScapeGreetingsView()
        }
    }
}

#Preview {
    MainView()
}
