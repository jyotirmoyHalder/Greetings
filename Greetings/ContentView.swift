//
//  ContentView.swift
//  Greetings
//
//  Created by jyotirmoy_halder on 5/2/26.
//

import SwiftUI



struct ContentView: View {
    
    var body: some View {
        ZStack {
            BackgroundView()
            
            VStack(alignment: .leading) {
                TitleView()
                
                Spacer()
                
                MessagesView()
                
                Spacer()
                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
