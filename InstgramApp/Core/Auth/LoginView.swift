//
//  LoginView.swift
//  InstgramApp
//
//  Created by Eslam Ghazy on 9/7/23.
//

import SwiftUI

struct LoginView: View {
    
    @State private var email = ""
    @State private var password = ""

    var body: some View {
        
        NavigationStack{
            
            VStack{
                Image("insta")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100,height: 100)
                
                VStack{
                    TextField("Enter Email", text: $email)
                        .autocapitalization(.none)
                         // castom modifier
                        .modifier(IGTextFieldModifier()
                        )
                    
                    
                    SecureField("Enter Password", text: $password)
                        .modifier(IGTextFieldModifier()
                        )
                    
                }
                
                Button{
                    print("")
                }label: {
                    Text("Forget Password?")
                        .fontWeight(.semibold)
                        .font(.footnote)
                        .padding(.top)
                        .padding(.trailing,28)
                }.frame(maxWidth: .infinity,alignment: .trailing)
                
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
                
                
                HStack{
                    
                    Rectangle().frame(width: (UIScreen.main.bounds.width/2)-40,height:0.5)
                    
                    Text("OR")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    
                    Rectangle().frame(width: (UIScreen.main.bounds.width/2)-40,height:0.5)
                        
                    
                }.foregroundColor(.gray)
                
                
                HStack{
                    Image("fb")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20,height: 20)
                    
                    Text("Continiuo with facebook")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(.systemBlue))
                }.padding(.top,8)
                
                Spacer()
                
                Divider()
                
                NavigationLink{
                    
                    AddEmailView()
                        .navigationBarBackButtonHidden(true)
                    
                } label: {
                    
                    HStack(spacing: 3){
                        
                        Text("Don't have an account?")
                        
                        Text("Sign Up")
                    }
                }.padding(.vertical,16)
            }
            
        }
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
