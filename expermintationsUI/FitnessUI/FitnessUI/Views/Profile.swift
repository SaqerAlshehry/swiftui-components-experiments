//
//  Home.swift
//  FitnessUI
//
//  Created by Saqer Alshehri on 04/10/1447 AH.
//



import SwiftUI



struct Profile : View {
    var body : some View {
        ZStack{
            Color("AppBackground")
                .ignoresSafeArea()
            VStack{
                Text("Profile & Settings")
                    .font(.title)
                HeaderSettings()
                HStack{
                    BoxSetting()
                    BoxSetting()
                    BoxSetting()
                }
                .padding()
                ScrollView{
                VStack(spacing : 10){
                    elementListSetting(icon: "person.fill", upperText: "Upper Text", lowerText: "Lower Text of the middle")
                    elementListSetting(icon: "person.fill", upperText: "Upper Text", lowerText: "Lower Text of the middle")
                    elementListSetting(icon: "person.fill", upperText: "Upper Text", lowerText: "Lower Text of the middle")
                    elementListSetting(icon: "person.fill", upperText: "Upper Text", lowerText: "Lower Text of the middle")
                    elementListSetting(icon: "person.fill", upperText: "Upper Text", lowerText: "Lower Text of the middle")
                    elementListSetting(icon: "person.fill", upperText: "Upper Text", lowerText: "Lower Text of the middle")
                    elementListSetting(icon: "person.fill", upperText: "Upper Text", lowerText: "Lower Text of the middle")
                    
                    elementListSetting(icon: "person.fill", upperText: "Upper Text", lowerText: "Lower Text of the middle")
                    elementListSetting(icon: "person.fill", upperText: "Upper Text", lowerText: "Lower Text of the middle")
                    elementListSetting(icon: "person.fill", upperText: "Upper Text", lowerText: "Lower Text of the middle")
                }
                .padding(15)
                .background(
                    RoundedRectangle(cornerRadius :20)
                        .fill(Color(hex : "#121212"))
                        .overlay {
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.white.opacity(0.1), lineWidth: 1)
                        }
                )
            }
                    
                
                
            }
        }
    }
    
    
}


#Preview {
    Profile()
}
