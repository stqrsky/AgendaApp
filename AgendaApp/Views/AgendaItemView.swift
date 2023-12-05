//
//  AgendaItemView.swift
//  AgendaApp
//
//  Created by Starsky Menchate on 29.11.23.
//

import SwiftUI

struct AgendaItemView: View {
    @StateObject var viewModel = ProfileViewViewModel()
    let item: AgendaItem
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(item.title)
                    .font(.body)
                Text("\(Date(timeIntervalSince1970: item.dueDate).formatted(date: .abbreviated, time: .shortened))")
                    .font(.footnote)
                    .foregroundColor(Color(.secondaryLabel))
            }
            
            Spacer()
            
            Button(action: {
                viewModel.toggleIsDone(item: item)
            }, label: {
                Image(systemName: item.isDone ? "checkmark.circle.fill" : "circle")
            })
        }
    }
}

#Preview {
    AgendaItemView(item: .init(
        id: "1234",
        title: "do your agenda",
        dueDate: Date().timeIntervalSince1970,
        createdDate: Date().timeIntervalSince1970,
        isDone: true
    ))
}
