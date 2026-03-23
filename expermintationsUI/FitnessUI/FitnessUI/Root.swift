//
//  ContentView.swift
//  FitnessUI
//
//  Created by Saqer Alshehri on 03/10/1447 AH.
//

import SwiftUI

struct Root: View {
    
    
    @State var selectedTab : Tab = .home
    var body: some View {
        ZStack{
            Color("AppBackground")
        TabView {
            Home()
                .tabItem {
                    Label("Homepage", systemImage : "house")
                }
                .tag(Tab.home)
            Articles()
                .tabItem {
                    Label("Articles", systemImage : "newspaper")
                }
                .tag(Tab.articles)
            Profile()
                .tabItem {
                    Label("Profile", systemImage : "person")
                }
                .tag(Tab.profile)
        }
        
        .tint(.green)
    }
        
    }
}
enum Tab {
    case home
    case articles
    case profile
}

#Preview {
    Root()
}
