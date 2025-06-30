//
//  LoginView.swift
//  ToDoList
//
//  Created by Yvan Gauthier on 30/06/2025.
//

import SwiftUI

struct LoginView: View {
    
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        NavigationView {
            VStack{
                // Header
                HeaderView()
                
                // Login Form
                Form {
                    TextField("Email Adress", text: $email)
                        .textFieldStyle(DefaultTextFieldStyle())
                    TextField("Password", text: $password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    Button {
                        // Attempt log in
                    } label : {
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(Color.blue)
                            Text("Log In")
                                .foregroundColor(Color.white)
                                .bold()
                        }
                    }
                    
                }
                // Create Account
                VStack {
                    Text("New arround here ? ")
                    NavigationLink("Create an account", destination: RegisterView())
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
