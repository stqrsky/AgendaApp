//
//  RegisterView.swift
//  AgendaApp
//
//  Created by Starsky Menchate on 29.11.23.
//

import SwiftUI

struct RegisterView: View {
    var body: some View {
        VStack {
            // Header
            HeaderView(title: "Register",
                       subtitle: "Start organizing you Agenda",
                       angle: -15,
                       background: .orange)
            
            Spacer()
        }
    }
}

#Preview {
    RegisterView()
}
