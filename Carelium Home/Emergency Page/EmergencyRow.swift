//
//  EmergencyRow.swift
//  Carelium Home
//
//  Created by Benard Chiherenge on 22/10/2025.
//

import SwiftUI

struct EmergencyRow: View {
    @State var client:CareRecipient
    var body: some View {
        NavigationStack {
            HStack{
                Text(client.name)
                    .padding()
                Spacer()
                // Message Button
                Button{
                    
                } label:{
                    Image(systemName: "ellipsis.bubble.fill")
                        .resizable()
                        .frame(width:30, height: 30)
                        .foregroundStyle(.green)
                }
                
                // Emergency call button
                Button{
                    
                } label:{
                    Image(systemName: "car.front.waves.up.fill")
                        .resizable()
                        .frame(width:30, height: 30)
                        .foregroundStyle(.red)
                }
                .padding()
            }
            .overlay{
                RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 1)
                    .frame(height: 50)
            }
            .padding()
            
        }
    }
}

#Preview {
    EmergencyRow(client: clients[0])
}
