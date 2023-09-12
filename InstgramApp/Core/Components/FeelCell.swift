//
//  FeelCell.swift
//  InstgramApp
//
//  Created by Eslam Ghazy on 8/7/23.
//

import SwiftUI

struct FeelCell: View {
    var body: some View {
        VStack{
            HStack{
                Image("tree")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40,height: 40)
                    .clipShape(Circle())
                
                Text("Eslam Ghazy")
                    .font(.footnote)
                    .fontWeight(.semibold)
                Spacer()
            }.padding(.leading,8)
            
            //post image
            HStack{
                Image("heart")
                    .resizable()
                    .scaledToFit()
                    .frame(height:400)
                
                
            }
            //action buttons
            HStack{
                Button{
                   print("Like post")
                } label: {
                    Image(systemName: "heart")
                        .imageScale(.large)
                }
                
                Button{
                    print("Comment post")
                    
                } label: {
                    Image(systemName: "bubble.right")
                    .imageScale(.large)
                    
                }
                
                Button{
                    print("Share post")
                } label: {
                    Image(systemName: "paperplane")
                    .imageScale(.large)
                    
                }
                
                Spacer()
            }
            .padding(.leading,8)
            .padding(.top,4)
            .foregroundColor(.black)
            
            // likes label
            Text("23 Like")
                .font(.footnote)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity,alignment: .leading)
                .padding(.leading,10)
                .padding(.top,1)
            
            // caption label
            HStack{
                Text("Eslam Ghazy ").fontWeight(.semibold) +
                Text("Mobile Developer this some of caption in text app Instgram")
            }
            .frame(maxWidth: .infinity,alignment: .leading)
                .font(.footnote)
                .padding(.leading,10)
                .padding(.top,1)
            
            
            Text("6 hours ago")
                .font(.footnote)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity,alignment: .leading)
                .padding(.leading,10)
                .padding(.top,1)
            
        }    }
}

struct FeelCell_Previews: PreviewProvider {
    static var previews: some View {
        FeelCell()
    }
}
