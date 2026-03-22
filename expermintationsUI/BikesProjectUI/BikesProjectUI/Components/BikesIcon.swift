//
//  BikesIcon.swift
//  expermintationsUI
//
//  Created by Saqer Alshehri on 03/10/1447 AH.
//

import SwiftUI

struct BikesIcon: View {
    
    var bikeImage : ImageResource
    var bikeName : String
    var body: some View {
        
        VStack{
            Image(bikeImage)
                .resizable()
                .scaledToFill()
                .frame(width: 75,height : 75)
                .clipShape(Circle())
            Text(bikeName)
                .font(.system(size: 15, weight: .medium, design: .rounded))
        }
    }
}

#Preview {
    BikesIcon(bikeImage : .motorcycle3, bikeName: "AME4")
}
