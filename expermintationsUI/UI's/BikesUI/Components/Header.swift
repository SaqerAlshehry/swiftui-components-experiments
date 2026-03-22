//
//  Header.swift
//  expermintationsUI
//
//  Created by Saqer Alshehri on 03/10/1447 AH.
//

import SwiftUI

struct Header: View {
    var body: some View {
        
        HStack{
            //image of a person
            HStack(spacing: 15){
                Image(.saqerPhoto)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 75, height: 75)
                    .clipShape(Capsule())
                VStack (alignment: .leading){
                    //name
                    Text("Saqer")
                        .font(.system(size: 20, weight: .semibold, design: .monospaced))
                    //location
                    Text("Saudi Arabia")
                        .font(.system(size: 15, weight: .regular, design: .monospaced))
                }
            }
            Spacer()
            //image of bell
            Image(systemName: "bell")
                .font(.system(size : 25, weight:.semibold))
        }
        .padding()
        
    }
}

#Preview {
    Header()
}
