//
//  HeaderView.swift
//  ToDoList
//
//  Created by Yvan Gauthier on 30/06/2025.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(Color.pink)
                .rotationEffect(Angle(degrees: 15))
            
            VStack{
                Text("To Do List")
                    .font(.system(size: 50))
                    .foregroundColor(.white)
                    .bold()
                
                Text("Get things done !")
                    .font(.system(size: 30))
                    .foregroundColor(.white)
            }
            .padding(.top, 80)
        }
        .frame(width: UIScreen.main.bounds.width * 3,
               height: 350)
        .offset(y:-150)
    }
}

#Preview {
    HeaderView()
}
