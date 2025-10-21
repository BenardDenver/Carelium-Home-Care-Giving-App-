//
//  TabView.swift
//  Carelium Home
//
//  Created by Benard Chiherenge on 15/10/2025.
//

import SwiftUI

struct TabView_Page:View {
    var body: some View {
        TabView{
            ClientMenu()
                .tabItem{
                    Image(systemName: "house.circle")
                    Text("Menu")
                        
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
    }
}
#Preview {
    TabView_Page()
}
