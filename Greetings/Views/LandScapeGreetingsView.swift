//
//  LandScapeGreetingsView.swift
//  Greetings
//
//  Created by jyotirmoy_halder on 7/2/26.
//

import SwiftUI

struct LandScapeGreetingsView: View {
    var body: some View {
        ZStack {
            BackgroundView()
            
            HStack {
                VerticalTitleView()
                
                Spacer()
                
                MessagesView()
                
            }
            .padding()
        }
    }
}

#Preview {
    LandScapeGreetingsView()
}
