//
//  User.swift
//  AgendaApp
//
//  Created by Starsky Menchate on 29.11.23.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
