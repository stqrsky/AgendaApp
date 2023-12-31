//
//  AgendaAppApp.swift
//  AgendaApp
//
//  Created by Starsky Menchate on 29.11.23.
//

import FirebaseCore
import SwiftUI

@main
struct AgendaApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
