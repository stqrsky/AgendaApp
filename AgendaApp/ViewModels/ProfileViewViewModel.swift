//
//  ProfileViewViewModel.swift
//  AgendaApp
//
//  Created by Starsky Menchate on 29.11.23.
//

import FirebaseAuth
import FirebaseFirestore
import Foundation

class ProfileViewViewModel: ObservableObject {
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
