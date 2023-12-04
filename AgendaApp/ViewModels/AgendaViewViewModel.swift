//
//  AgendaViewViewModel.swift
//  AgendaApp
//
//  Created by Starsky Menchate on 30.11.23.
//

import Foundation

/// ViewModel for list of items view
///  Primary tab
class AgendaViewViewModel: ObservableObject {
    @Published var showingNewItemView = false
    
    init() {}
}
