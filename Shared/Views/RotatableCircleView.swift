//
//  RotatableCircleView.swift
//  Greetings
//
//  Created by jyotirmoy_halder on 7/2/26.
//

import SwiftUI

struct RotatableCircleView: View {
    
    let lineWidth = 15.0
    let diameter = 70.0
    
    @State private var turns: Int = 0
    var angle: Angle {
        Angle(degrees: Double(turns) * 360)
    }
    var angularGradient: AngularGradient {
        AngularGradient(
            gradient: Gradient(colors: [.pink,. purple, .blue, .orange,]),
            center: .center,
            angle: .zero
        )
    }
    
    var body: some View {
        Circle()
            .strokeBorder(angularGradient, lineWidth: lineWidth)
            .rotationEffect(angle)
            .animation(.linear(duration: 0.8), value: turns)
            .frame(width: diameter, height: diameter)
            .onTapGesture {
                turns += 1
            }
    }
}

#Preview {
    RotatableCircleView()
}
