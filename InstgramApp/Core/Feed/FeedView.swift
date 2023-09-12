//
//  FeedView.swift
//  InstgramApp
//
//  Created by Eslam Ghazy on 8/7/23.
//

import SwiftUI

struct FeedView: View {
    
    var body: some View {
       
        NavigationStack{
            
            ScrollView{
                
                LazyVStack(spacing: 32){
                    
                    ForEach( 0...100 ,id:\.self){post in
                        
                        FeelCell()
                        
                    }
                    
                    
                }
                
            }
            
            .navigationTitle("Feed")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading){
                    Image("insta")
                        .resizable()
                        .frame(width: 30,height: 30)
                    
                }
    
                ToolbarItem(placement: .navigationBarTrailing){
                        Image(systemName: "paperplane")
                        .imageScale(.large)
                   
                }
            }
        }
        
    }
    
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
