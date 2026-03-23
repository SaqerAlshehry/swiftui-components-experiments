//
//  boxSetting.swift
//  FitnessUI
//
//  Created by Saqer Alshehri on 04/10/1447 AH.
//

import SwiftUI

struct BoxSetting: View {
    var body: some View {
        
        RoundedRectangle(cornerRadius: 20)
            .fill(Color(hex: "#121212"))
            .frame(width: 120, height: 120)
            .overlay {
                VStack(spacing: 6) {
                    
                    Text("Weight")
                        .font(.system(size: 13, weight: .medium))
                        .foregroundStyle(.white.opacity(0.6))
                    
                    Text("69.3 KG")
                        .font(.system(size: 20, weight: .semibold))
                        .foregroundStyle(.white)
                }
            }
            .overlay {
                RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.white.opacity(0.1), lineWidth: 1)
            }
            .shadow(color: .black.opacity(0.4), radius: 10, y: 6)
    }
}

#Preview {
    BoxSetting()
}
