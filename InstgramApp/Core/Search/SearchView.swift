//
//  SearchView.swift
//  InstgramApp
//
//  Created by Eslam Ghazy on 8/7/23.
//

import SwiftUI

struct SearchView: View {
    
    @State private var searchText = ""
    
    var body: some View {
    
        NavigationStack{
            ScrollView{
                
                LazyVStack{
                    
                    ForEach(User.MOCK_USER){ user in
                        NavigationLink(value: user){
                            HStack{
                                Image(user.profileImageUrl ?? "")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 40,height: 40)
                                    .clipShape(Circle())
                                VStack(alignment: .leading){
                                    Text(user.username).fontWeight(.semibold)
                                        .foregroundColor(.black)
                                    
                                    if let fullname = user.fullname{
                                        Text(fullname)
                                    }
                                }.font(.footnote)
                                Spacer()
                                
                            }
                            
                        }
                    }
                    .foregroundColor(.blue)
                    .padding(.horizontal)
                }
                .padding(.top,8)
                .searchable(text: $searchText,prompt: "Search...")
            }
            .navigationDestination(for: User.self, destination: {user in
                ProfileView()
            })
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
