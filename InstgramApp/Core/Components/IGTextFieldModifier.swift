//
//  IGTextFieldModifier.swift
//  InstgramApp
//
//  Created by Eslam Ghazy on 10/7/23.
//

import Foundation
import SwiftUI



struct IGTextFieldModifier : ViewModifier {
    
    
    func body (content:Content) -> some View{
        content
            .font(.subheadline)
            .padding(12)
            .background(Color(.systemGray6))
            .cornerRadius(10)
            .padding(.horizontal,24)
        
        
    }
    
}


