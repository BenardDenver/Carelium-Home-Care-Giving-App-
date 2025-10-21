//
//  Traditional_Healing.swift
//  Carelium Home
//
//  Created by Benard Chiherenge on 15/10/2025.
//

import SwiftUI

import SwiftUI

struct Traditional_Healing: View {
    var body: some View {
        NavigationStack {
            List(remediesData){ remedy in
                NavigationLink {
                    RemedyDetails(remedy: remedy)
                } label: {
                    RemedyRow(remedy: remedy)
                }
            }
            .listStyle(.inset)
            .navigationTitle("Traditional Healing Hub")
            
//        } detail: {
//            Text("Select Illness")
      }
        .toolbar(.hidden, for: .tabBar)
    }
}





#Preview {
    Traditional_Healing()
}
