//
//  AgendaButton.swift
//  AgendaApp
//
//  Created by Starsky Menchate on 30.11.23.
//

import SwiftUI

struct AgendaButton: View {
    
    let title: String
    let background: Color
    let action: () -> Void
    
    var body: some View {
        Button {
            // Action
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
                
                Text(title)
                    .foregroundColor(Color.white)
                    .bold()
            }
        }
        .padding()
    }
}

#Preview {
    AgendaButton(title: "Value", 
                 background: .pink) {
        // Action
    }
}

