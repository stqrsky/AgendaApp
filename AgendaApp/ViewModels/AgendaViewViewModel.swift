//
//  AgendaViewViewModel.swift
//  AgendaApp
//
//  Created by Starsky Menchate on 30.11.23.
//

import FirebaseFirestore
import Foundation

/// ViewModel for list of items view
///  Primary tab
class AgendaViewViewModel: ObservableObject {
    @Published var showingNewItemView = false
    
    private let userId: String
    
    init(userId: String) {
        self.userId = userId
    }
    
    /// Delete to agenda list item
    /// - Parameter id: item id to delete
    func delete(id: String) {
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(userId)
            .collection("agendas")
            .document(id)
            .delete()
    }
}
