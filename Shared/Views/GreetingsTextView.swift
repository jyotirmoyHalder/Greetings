//
//  GreetingsTextView.swift
//  Greetings
//
//  Created by jyotirmoy_halder on 7/2/26.
//

import SwiftUI

struct GreetingsTextView: View {
    @Binding var subtitle: LocalizedStringKey
    let subtitles: [LocalizedStringKey] = [
        "Exploring iOS Programming",
        "Learning how to bake",
        "Programming recipes",
        "A quest for knowledge",
    ]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("Greetings")
                .font(.largeTitle)
                .fontWeight(.semibold)
            #if os(macOS)
            Text(subtitle)
                .font(.title)
                .bold()
            #elseif os(iOS)
            Text(subtitle)
                .font(.headline)
                .fontWeight(.thin)
            #endif
        }
        .onTapGesture {
            subtitle = subtitles.randomElement() ?? LocalizedStringKey("Exploring iOS Programming")
        }
    }
}

#Preview {
    GreetingsTextView(subtitle: .constant("Exploring iOS Programming"))
}
