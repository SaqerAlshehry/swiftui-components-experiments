//
//  Home.swift
//  expermintationsUI
//
//  Created by Saqer Alshehri on 03/10/1447 AH.
//

import SwiftUI

struct Home: View {
    let bikeCategories: [BikeCategory] = [

        .init(name: "Cruiser", image: .motorcycle2),
        .init(name: "Touring", image: .motorcycle3),
        .init(name: "Adventure", image: .motorcycle4),
        .init(name: "Off-Road", image: .motorcycle5),
        .init(name: "Cafe Racer", image: .motorcycle7),
        .init(name: "Electric", image: .motorcycle8),
        .init(name: "Classic", image: .motorcycle9)
    ]
    
    var body: some View {
        ZStack{
            Color("AppBackground")
                .ignoresSafeArea()
            ScrollView{
            VStack(spacing : 15){
                Header()
                SearchBar()
                ScrollView(.horizontal){
                    HStack(spacing: 15){
                        ForEach(bikeCategories){Category in
                            BikesIcon(bikeImage: Category.image, bikeName: Category.name)
                        }
                    }
                    .padding()
                }
                
                VStack(alignment: .leading){
                    Text("Your Nearby Bikes")
                        .font(.system(size: 25,weight: .semibold,design : .monospaced))
                        .padding(.horizontal,5)
                    BikeCard(bikeImage: .motorcycleCard,event: "Free Delivery", bikeName: "TREK", title: "Rent For 3 Days!", info: "1,500m", infoIcon: "map")
                }
                .padding(.vertical,15)
                
                VStack(alignment: .leading){
                    Text("Suggested for You")
                        .font(.system(size: 25,weight: .semibold,design : .monospaced))
                        .padding(.horizontal,5)
                    BikeCard(bikeImage: .motorcycle3,event: "Special Offer", bikeName: "SRY0", title: "Limited for 24h", info: "799", infoIcon: "dollarsign")
                }
                .padding(.horizontal,10)
            }
        }
        }
    }
}

#Preview {
    Home()
}
