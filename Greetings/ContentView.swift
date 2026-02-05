//
//  ContentView.swift
//  Greetings
//
//  Created by jyotirmoy_halder on 5/2/26.
//

import SwiftUI



struct ContentView: View {
    
    let messages: [DataItemModel] = [
        .init(
            text: "Hello there!",
            color: .green
        ),
        .init(
            text: "Welcome to Swift Programming!",
            color: .gray
        ),
        .init(
            text: "Are you ready to?",
            color: .yellow
        ),
        .init(
            text: "Start exploring?",
            color: .red
        ),
        .init(
            text: "Ready?",
            color: .purple
        ),
    ]
    
    var body: some View {
        VStack(alignment: .leading) {
            ForEach(messages) { message in
                TextView(
                    text: message.text,
                    color: message.color
                )
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
