//
//  TextView.swift
//  Greetings
//
//  Created by jyotirmoy_halder on 5/2/26.
//

import SwiftUI

struct TextView: View {
    
    let text: String
    let color: Color
    
    var body: some View {
        Text(text)
            .fontWeight(.semibold)
            .foregroundStyle(.white)
            .padding()
            .background(color.opacity(0.4))
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .shadow(color: color,  radius: 5, x: 10, y: 10 )
    }
}

#Preview {
    VStack {
        TextView(text: "Hello there!", color: .green)
        TextView(text: "Hummus", color: .green)
        TextView(text: "Peace", color: .purple)
    }
}
