//
//  Pulse.swift
//  Carelium Home
//
//  Created by Benard Chiherenge on 27/10/2025.
//

import SwiftUI

struct Pulse:View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 200, height: 150)
                .foregroundStyle(.orange)
            VStack{
                HStack{
                    Text("Pulse(BPM)")
                        .font(.title2)
                        .bold()
                        .foregroundStyle(.white)
                    Image(systemName: "stethoscope")
                        .resizable()
                        .foregroundStyle(.white)
                        .frame(width:30, height: 25)
                }
                .offset(y: -12)
                Text("\(clientStatus.heartRate)")
                    .foregroundStyle(.white)
                    .font(.largeTitle)
              
            }
        }
    }
}
#Preview {
    Pulse()
}
