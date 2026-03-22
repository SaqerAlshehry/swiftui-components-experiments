//
//  Root.swift
//  expermintationsUI
//
//  Created by Saqer Alshehri on 03/10/1447 AH.
//

import SwiftUI


struct Root : View {
    @State var selectedTap : Tabs = .home
    var body : some View {
        TabView{
            
            Home()
                .tabItem{
                    Label("Home", systemImage: "house")
                }
                .tag(Tabs.home)
            Wishlist()
                .tabItem{
                    Label("Wishlist", systemImage: "heart")
                }
                .tag(Tabs.wishlist)
            
            Messages()
                .tabItem{
                Label("message", systemImage: "message")
            }
            .tag(Tabs.messages)
            
            Profile()
                .tabItem{
                    Label("Profile",systemImage : "person")
                }
                .tag(Tabs.profile)
        }
    }
}
enum Tabs : Hashable {
    case home
    case wishlist
    case messages
    case profile
}

#Preview{
    Root()
}
