//
//  HeaderSettings.swift
//  FitnessUI
//
//  Created by Saqer Alshehri on 04/10/1447 AH.
//

import SwiftUI

struct HeaderSettings: View {
    var body: some View {
        VStack{
            //image
            Image(.saqerPhoto)
                .resizable()
                .scaledToFit()
                .frame(width : 75)
                .clipShape(Circle())
                .overlay(alignment : .bottomTrailing){
                    Image(systemName : "pencil")
                        .font(.title3)
                        .foregroundStyle(.white)
                        .background{
                            Circle().fill(Color.black.opacity(0.8))
                        }
                }
            
            Text("Saqer A.")
                .font(.system(size: 20,weight: .regular,design: .monospaced))
            //name
            Text("saqeralshehri.swe@gmail.com")
                .font(.system(size: 15,weight: .regular,design: .monospaced))
                .foregroundStyle(.secondary)
            //email
        }
    }
}

#Preview {
    HeaderSettings()
}
