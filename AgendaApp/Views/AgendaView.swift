//
//  AgendaItemsView.swift
//  AgendaApp
//
//  Created by Starsky Menchate on 29.11.23.
//@ﬂ

import FirebaseFirestoreSwift
import SwiftUI

struct AgendaView: View {
    @StateObject var viewModel = AgendaViewViewModel()
    @FirestoreQuery var items: [AgendaItem]
    
    
    init(userId: String) {
        //  usersd/<id>/todos/<entries>
        self._items = FirestoreQuery(
            collectionPath: "users/\(userId)/agendas"
        )
    }
    
    var body: some View {
        NavigationView {
            VStack {
                List(items) { item in
                    AgendaItemView(item: item)
                        .swipeActions {
                            Button("Delete") {
                                viewModel.delete(id: item.id)
                            }
                            .background(Color.red)
                        }
                }
                .listStyle(PlainListStyle())
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
    AgendaView(userId: "ip8cgcPQRXgZCNCaTO0PU097Vv02")
}
