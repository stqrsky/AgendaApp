//
//  ProfileView.swift
//  AgendaApp
//
//  Created by Starsky Menchate on 29.11.23.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var viewModel = ProfileViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                // Avatar
                Image(systemName: "person.circle")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(Color.blue)
                    .frame(width: 125, height: 125)
                    .padding()
                
                // Info: Name, Email, Member since:
                VStack(alignment: .leading) {
                    HStack {
                        Text("Name: ")
                            .bold()
                        Text("Afraz")
                    }
                    .padding()
                    HStack {
                        Text("Email: ")
                            .bold()
                        Text("Afraz")
                    }
                    .padding()
                    HStack {
                        Text("Member Since: ")
                            .bold()
                        Text("Afraz")
                    }
                    .padding()
                }
                .padding()
                
                // Sign out
                Button("Log Out") {
                    viewModel.logOut()
                }
                .tint(.red)
                .padding()
                
                Spacer()
            }
            .navigationTitle("Profile")
        }
    }
}

#Preview {
    ProfileView()
}
