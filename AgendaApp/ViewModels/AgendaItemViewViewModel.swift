//
//  AgendaItemViewViewModel.swift
//  AgendaApp
//
//  Created by Starsky Menchate on 30.11.23.
//

import FirebaseAuth
import FirebaseFirestore
import Foundation

/// ViewModel for a single Agenda item view ( each row in the list)
class AgendaItemViewViewModel: ObservableObject {
    init() {}
    
    func toggleIsDone(item: AgendaItem) {
        var itemCopy = item
        itemCopy.setDone(!item.isDone)
        
        guard let uid = Auth.auth().currentUser?.uid else {
            return
        }
        
        let db = Firestore.firestore()
        db.collection("users")
            .document(uid)
            .collection("agendas")
            .document(itemCopy.id)
            .setData(itemCopy.asDictionary())
    }
}
