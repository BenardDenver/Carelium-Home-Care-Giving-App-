//
//  EmergencyInfo.swift
//  Carelium Home
//
//  Created by Benard Chiherenge on 22/10/2025.
//

import SwiftUI

struct EmergencyInfo:View{
    
    @Binding var isOnInfo: Bool
    
    var body: some View{
        VStack(alignment: .center){
            HStack{
                Text("Warning")
                    .font(.title)
                    .bold()
                    .padding()
                    Spacer()
                Button{
                    isOnInfo.toggle()
                } label: {
                    Image(systemName: "x.circle")
                        .resizable()
                        .frame(width:30, height: 30)
                        .foregroundStyle(.red)
                }
                .padding()
            }
            Text("""
               Please only use emergency alert page if the client in danger or has a medical emergency.
               """)
            
        }
        .overlay{
            RoundedRectangle(cornerRadius: 10)
                .stroke(lineWidth: 1)
                .foregroundStyle(.red)
                .frame(height: 120)
        }
        .padding()
    }
}
#Preview {
    EmergencyInfo(isOnInfo: .constant(true))
}
