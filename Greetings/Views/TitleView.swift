//
//  TitleView.swift
//  Greetings
//
//  Created by jyotirmoy_halder on 6/2/26.
//

import SwiftUI
import TipKit

/// This is the title view of the app which
/// displays a title, a subtitle, which randomly changes on tap
/// and we have colorful disc which rotates on tap and
/// that is amazing.
struct TitleView: View {
    
    @State private var subtitle: LocalizedStringKey = "Exploring iOS Programming"
    
    @State var greetingsTip = TipGroup(.ordered) {
        GreetingsTip()
        GreetingsTipDisc()
    }
    
    var body: some View {
        HStack {
            GreetingsTextView(subtitle: $subtitle)
                .popoverTip(
                    greetingsTip.currentTip as? GreetingsTip
                )
            
            Spacer()
            
            RotatableCircleView()
                .popoverTip(
                    greetingsTip.currentTip as? GreetingsTipDisc
                )
            
        }
    }
}

#Preview {
    VStack {
        TitleView()
        Spacer()
    }
    .padding()
}
