//
//  SearchBar.swift
//  expermintationsUI
//
//  Created by Saqer Alshehri on 03/10/1447 AH.
//

import SwiftUI

struct SearchBar: View {
    
    @State var textInput : String = ""
    
    var body: some View {
        
        RoundedRectangle(cornerRadius : 100)
            .frame(width: 370, height: 55)
            .foregroundStyle(.ultraThinMaterial)
            .overlay{
                HStack(alignment: .top, spacing: 20){
                    Image(systemName : "magnifyingglass")
                        .font(.system(size: 20,weight: .semibold))
                    TextField("Search...", text : $textInput)
                        .fontDesign(.monospaced)
                }
                .padding()
            }
            .overlay(
                RoundedRectangle(cornerRadius : 100)
                    .stroke()
            )
                
            
        
    }
}

#Preview {
    SearchBar()
}
