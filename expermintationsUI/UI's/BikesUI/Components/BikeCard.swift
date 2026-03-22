//
//  BikeCard.swift
//  expermintationsUI
//
//  Created by Saqer Alshehri on 03/10/1447 AH.
//

import SwiftUI

struct BikeCard: View {
    var bikeImage : ImageResource
    var event : String
    var bikeName : String
    var title : String
    var info : String
    var infoIcon : String
    
    var body: some View {
            Image(bikeImage)
                .resizable()
                .scaledToFit()
                .frame(height : 250)
                .overlay(alignment : .top){
                    HStack{
                        Text(event)
                            .foregroundStyle(.white)
                            .font(.system(size : 15))
                            .padding(.horizontal,5)
                            .padding(.vertical,5)
                            .background{
                                Capsule().fill(Color.yellow.opacity(0.6))
                            }
                        Spacer()
                        Image(systemName : "heart")
                            .foregroundStyle(.black.opacity(0.7))
                            .padding(.horizontal,5)
                            .padding(.vertical,5)
                            .background{
                                Capsule().fill(Color.white.opacity(0.7))
                            }
                    }
                    .padding()
                }
                .overlay{
                    LinearGradient(
                        stops: [
                            .init(color: .clear, location: 0.5),
                            .init(color: .gray.opacity(1.0), location: 0.5)
                        ],
                        startPoint: .center,
                        endPoint: .bottom
                    )
                    .overlay(alignment : .bottom){
                        
                        HStack(alignment : .bottom){
                            VStack(alignment : .leading){
                                //name
                                Text(bikeName)
                                    .foregroundStyle(.white)
                                    .font(.system(size: 20,weight: .semibold,design : .monospaced))
                                //rent days
                                Text(title)
                                    .foregroundStyle(.white)
                            }
                            Spacer()
                            //distance
                            HStack{
                                Image(systemName : infoIcon)
                                    .foregroundStyle(.white)
                                    .font(.system(size : 15,weight: .bold))
                                Text(info)
                                    .foregroundStyle(.white)
                            }
                        }
                        .padding(.horizontal)
                        .padding(.vertical,5)
                    }
                    
                }
                .clipShape(RoundedRectangle(cornerRadius : 20))
    }
}

#Preview {
    BikeCard(bikeImage : .motorcycleCard,event : "Free Delivery", bikeName: "TREK", title: "Rent from 3 Days!", info: "1,200m", infoIcon: "map")
}
