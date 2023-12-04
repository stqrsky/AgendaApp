//
//  AgendaItemsView.swift
//  AgendaApp
//
//  Created by Starsky Menchate on 29.11.23.
//@ﬂ

import SwiftUI

struct AgendaView: View {
    @StateObject var viewModel = AgendaViewViewModel()
    
    private let userId: String
    
    init(userId: String) {
        self.userId = userId
    }
    
    var body: some View {
        NavigationView {
            VStack {
                
            }
            .navigationTitle("Agenda")
            .toolbar {
                Button(action: {
                    // Action
                }, label: {
                    Image(systemName: "plus")
                })
            }
        }
    }
}

#Preview {
    AgendaView(userId: "")
}
