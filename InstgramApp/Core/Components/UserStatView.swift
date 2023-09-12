//
//  UserStatView.swift
//  InstgramApp
//
//  Created by Eslam Ghazy on 8/7/23.
//

import SwiftUI

struct UserStatView: View {
    
    let value:Int
    let titel:String
    
    var body: some View {
        VStack{
            Text("\(value)")
                .font(.subheadline)
                .fontWeight(.semibold)
            
            Text(titel)
            .font(.footnote)
            
        }
    }
}

struct UserStatView_Previews: PreviewProvider {
    static var previews: some View {
        UserStatView(value: 5, titel: "Posts")
    }
}
