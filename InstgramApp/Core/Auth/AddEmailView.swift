//
//  AddEmailView.swift
//  InstgramApp
//
//  Created by Eslam Ghazy on 9/7/23.
//

import SwiftUI

struct AddEmailView: View {
    
    @State private var email = ""
    // to dismiss screen 
    @Environment(\.dismiss)var dismiss

    var body: some View {
        
        VStack(spacing: 12){
            Text("Add Your Email").font(.title)
                .fontWeight(.bold)
                .padding(.top)
            
            Text("you'll use this email to sign in to your account")
                .font(.footnote)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal,24)
            
            TextField("Enter Email", text: $email)
                .autocapitalization(.none)
            // Castom modifier
                .modifier(IGTextFieldModifier())

            Button{
                print("")
            }label: {
                Text("Login")
                    .fontWeight(.semibold)
                    .font(.footnote)
                    .foregroundColor(.white)
                    .frame(width: 360,height: 44)
                    .background(Color(.systemBlue))
                    .cornerRadius(10)
            }.padding(.vertical)
            
            Spacer()
            
        }
        .toolbar{
            ToolbarItem(placement: .navigationBarLeading){
                Image(systemName: "chevron.left")
                    .imageScale(.large)
                    .onTapGesture {
                        dismiss()
                    }
            }
        }
        
        
    }
}

struct AddEmailView_Previews: PreviewProvider {
    static var previews: some View {
        AddEmailView()
    }
}
