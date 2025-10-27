//
//  Health_status-page.swift
//  Carelium Home
//
//  Created by Benard Chiherenge on 15/10/2025.
//

import SwiftUI

struct Health_Status:View {
    var body: some View {
        VStack(alignment:.leading){
            Text("Health Status").font(.title).bold()
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
                
            }label: {
                ZStack{
                    Rectangle().foregroundColor(.green)
                        .frame(height: 70)
                        .padding(20)
                    Text("Call Caregiver")
                        .foregroundStyle(.white)
                        .font(.title)
                }
            }
        }
        .padding()
        .toolbar(.hidden, for: .tabBar)
    }
}
#Preview {
    Health_Status()
}
