//
//  elementListSetting.swift
//  FitnessUI
//
//  Created by Saqer Alshehri on 04/10/1447 AH.
//

import SwiftUI

struct elementListSetting: View {
    
    var icon,upperText,lowerText : String
    
    
    
    var body: some View {
        HStack(spacing : 100){
            //image
            
            HStack(spacing : 20){
            Image(systemName : icon)
                    .foregroundStyle(.gray.opacity(1))
                    .padding(3)
                    .background{
                        RoundedRectangle(cornerRadius: 5).fill(Color(hex : "#0C0C0C"))
                            .stroke(.gray.opacity(0.8),lineWidth : 1)
                    }
            
            VStack(alignment : .leading){
                //text
                Text(upperText)
                //text
                Text(lowerText)
                    .foregroundStyle(.white.opacity(0.6))
            }
        }
            
//            icon
            Image(systemName : "arrow.right")
            
            
            
        }
    }
}

#Preview {
    elementListSetting(icon: "person.fill", upperText: "Upper Text", lowerText: "Lower text of the middle")
}
