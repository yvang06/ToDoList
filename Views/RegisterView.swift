//
//  RegisterView.swift
//  ToDoList
//
//  Created by Yvan Gauthier on 30/06/2025.
//

import SwiftUI

struct RegisterView: View {
    
    @State var email = ""
    @State var password = ""
    @State var name = ""
    
    var body: some View {
        VStack{
            // Header
            HeaderView(title: "Register",
                       subtitle: "Start orginizing Todos", angle: -15,
                       background: .orange)
            
            // Login Form
            Form{
                TextField("Name", text: $name)
                    .textFieldStyle(DefaultTextFieldStyle())
                TextField("Email", text: $email)
                    .textFieldStyle(DefaultTextFieldStyle())
                SecureField("Password", text: $password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                // Submit button
                Button {
                    // Attempt log in
                } label : {
                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(Color.green)
                        Text("Register")
                            .foregroundColor(Color.white)
                            .bold()
                    }
                }
            }
            Spacer()
        }
    }
}

#Preview {
    RegisterView()
}
