//
//  ProfileView.swift
//  InstgramApp
//
//  Created by Eslam Ghazy on 8/7/23.
//

import SwiftUI

struct ProfileView: View {
    
    // to init items
    private let gridItems:[GridItem] = [
        .init(.flexible(),spacing: 1),
        .init(.flexible(),spacing: 1),
        .init(.flexible(),spacing: 1)
        
    ]
    
    var body: some View {
        ScrollView{
            // hearder
            
            VStack(spacing:10){
                // pic and stats
                HStack{
                    Image("tree")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 80,height: 80)
                        .clipShape(Circle())
                    Spacer()
                    
                    HStack(spacing : 50){
                        // Component
                        UserStatView(value: 3, titel: "Posts")
                        
                        UserStatView(value: 3, titel: "Followers")
                        
                        UserStatView(value: 3, titel: "Following")

                        
                        
                    }
                    
                    
                }.padding(.horizontal)
                    .padding(.bottom,4)
                
                // name and bio
                VStack(alignment: .leading,spacing: 4){
                    Text("Eslam Ghazy")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    Text("Mobile Developer")
                        .font(.footnote)
                }
                .frame(maxWidth: .infinity,alignment:.leading)
                .padding(.horizontal)
                // action button
                Button{
                    
                }label: {
                    Text("Edit Profile")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .frame(width: 360,height: 32)
                        .foregroundColor(.black)
                        .overlay(
                            RoundedRectangle(cornerRadius:6).stroke(Color.gray,lineWidth: 1)
                        )
                }
                Divider()
            }
            
            //post gridview
            
            LazyVGrid(columns: gridItems,spacing: 1){
                ForEach(0...30 ,id: \.self){ index  in
                    Image("tree").resizable()
                        .resizable()
                        .scaledToFit()
                    
                }
               
            
            }
            
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
