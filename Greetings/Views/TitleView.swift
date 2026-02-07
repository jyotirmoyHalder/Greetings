//
//  TitleView.swift
//  Greetings
//
//  Created by jyotirmoy_halder on 6/2/26.
//

import SwiftUI

/// This is the title view of the app which
/// displays a title, a subtitle, which randomly changes on tap
/// and we have colorful disc which rotates on tap and
/// that is amazing.
struct TitleView: View {
    
    @State private var subtitle: LocalizedStringKey = "Exploring iOS Programming"
    
    var body: some View {
        HStack {
            GreetingsTextView(subtitle: $subtitle)
            
            Spacer()
            
            RotatableCircleView()
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
