//
//  MessagesView.swift
//  Greetings
//
//  Created by jyotirmoy_halder on 6/2/26.
//

import SwiftUI

struct MessagesView: View {
    let messages: [DataItemModel] = [
        .init(
            text: "Hello there!",
            color: .myGreen
        ),
        .init(
            text: "Welcome to Swift Programming!",
            color: .myGray
        ),
        .init(
            text: "Are you ready to?",
            color: .myYellow
        ),
        .init(
            text: "Start exploring?",
            color: .myRed
        ),
        .init(
            text: "Ready?",
            color: .myPurple
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
    }
}

#Preview {
    MessagesView()
}
