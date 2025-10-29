//
//  TabView.swift
//  Carelium Home
//
//  Created by Benard Chiherenge on 15/10/2025.
//

import SwiftUI

struct TabView_Page:View {
    @AppStorage("isClient") var isClient:Bool = false
    var body: some View {
        TabView{
            if isClient == true{
                ClientMenu()
                    .tabItem{
                        Image(systemName: "house.circle")
                        Text("Menu")
                        
                    }
            } else{
                Caregiver_Main_Menu()
                    .tabItem{
                        Image(systemName: "house.circle")
                        Text("Menu")
                    }
            }
            
            CommunicationHub()
                .tabItem{
                    Image(systemName: "message.circle")
                    Text("Chat")
                    
                }
                
            Settings()
                .tabItem{
                    Image(systemName: "gearshape.circle")
                    Text("Settings")
                }
        }
        .tint(.orange)
    }
}
#Preview {
    TabView_Page()
}
