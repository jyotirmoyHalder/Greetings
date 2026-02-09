//
//  VerticalTitleView.swift
//  Greetings
//
//  Created by jyotirmoy_halder on 7/2/26.
//

import SwiftUI

struct VerticalTitleView: View {
    
    @State private var subtitle: LocalizedStringKey = "Exploring iOS Programming"
    
    var body: some View {
        VStack(alignment: .leading) {
            GreetingsTextView(subtitle: $subtitle)
                        
            RotatableCircleView()
                .padding(.top )
            
            Spacer()
        }
        .padding(.vertical)
    }
}

#Preview {
    VerticalTitleView()
}
