//
//  LoginView.swift
//  AgendaApp
//
//  Created by Starsky Menchate on 29.11.23.
//

import SwiftUI

struct LoginView: View {
    
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        NavigationView {
            VStack {
                // Header
                HeaderView(title: "Agenda",
                           subtitle: "Get things done",
                           angle: 15,
                           background: .purple)
                
                // Login
                Form {
                    TextField("Email Address", text: $email)
                        .textFieldStyle(DefaultTextFieldStyle())
                    SecureField("Password", text: $password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    Button {
                        // Attempt log in
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(Color.blue)
                            
                            Text("Log In")
                                .foregroundColor(Color.white)
                                .bold()
                        }
                    }
                    .padding()
                }
                .offset(y: -50)
                
                // Create Account
                VStack {
                    Text("New around here?")
//                    Button("Create An Account") {
//                        // Show registration View
//                    }
                    NavigationLink("Create An Account", destination: RegisterView())
                }
                .padding(.bottom, 50)
                
                Spacer()
                
            }
        }
    }
}

#Preview {
    LoginView()
}
