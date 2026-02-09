//
//  LanguageOptionsView.swift
//  Greetings
//
//  Created by jyotirmoy_halder on 8/2/26.
//

import SwiftUI

struct LanguageOptionsView: View {
    
    @Binding var language: String
    @Binding var layoutDirectionString: String
    
    var body: some View {
        Image(systemName: "gearshape.fill")
            .contextMenu {
                Button {
                    language = "en"
                    layoutDirectionString = LEFT_TO_RIGHT
                } label: {
                    Text("English")
                }
                Button {
                    language = "es"
                    layoutDirectionString = LEFT_TO_RIGHT
                } label: {
                    Text("Spanish")
                }
                Button {
                    language = "he"
                    layoutDirectionString = RIGHT_TO_LEFT
                } label: {
                    Text("Hebrew")
                }
                Button {
                    language = "Arabic"
                    layoutDirectionString = RIGHT_TO_LEFT
                } label: {
                    Text("Arabic")
                }
                Button {
                    language = "bn"
                    layoutDirectionString = LEFT_TO_RIGHT
                } label: {
                    Text("Bangla")
                }
            }
    }
}

#Preview {
    LanguageOptionsView(language: .constant("en"), layoutDirectionString: .constant(LEFT_TO_RIGHT))
}
