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
                    viewModel.showingNewItemView = true
                }, label: {
                    Image(systemName: "plus")
                })
            }
            .sheet(isPresented: $viewModel.showingNewItemView, content: {
                NewItemView(newItemPresented: $viewModel.showingNewItemView)
            })
        }
    }
}

#Preview {
    AgendaView(userId: "")
}
