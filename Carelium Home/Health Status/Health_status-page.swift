//
//  Health_status-page.swift
//  Carelium Home
//
//  Created by Benard Chiherenge on 15/10/2025.
//

import SwiftUI

struct Health_Status:View {
    
    let phoneNumber = "1234567890"
    
    @Environment(\.openURL) var openURL
    var body: some View {
        
        NavigationStack {
            VStack(alignment:.leading){
                VStack(spacing:30){
                    ScrollView(.horizontal){
                        HStack {
                            BloodPressure()
                            SleepTime()
                        }
                        
                    }
                    .scrollIndicators(.hidden)
                    ScrollView(.horizontal){
                        HStack {
                            Pulse()
                            Weight()
                        }
                        
                    }
                    .scrollIndicators(.hidden)
                }
                Spacer()
                Button{
                    if let url = URL(string: "tel://\(phoneNumber)") {
                        openURL(url)
                    }
                }label: {
                    ZStack{
                        Rectangle().foregroundColor(.green)
                            .frame(height: 70)
                            .padding(20)
                        Text("Call Caregiver")
                            .foregroundStyle(.white)
                            .font(.title)
                            .bold()
                    }
                }
            }
            .navigationTitle("Health Status")
            .padding()
            .toolbar(.hidden, for: .tabBar)
        }
        .ignoresSafeArea()
    }
}
#Preview {
    Health_Status()
}
