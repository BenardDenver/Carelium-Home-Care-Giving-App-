//
//  SleepTime.swift
//  Carelium Home
//
//  Created by Benard Chiherenge on 27/10/2025.
//

import SwiftUI

struct SleepTime:View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 200, height: 150)
                .foregroundStyle(.red)
            VStack{
                HStack{
                    Text("Sleep Time(hr)")
                        .font(.title2)
                        .bold()
                        .foregroundStyle(.white)
                    Image(systemName: "sleep.circle.fill")
                        .resizable()
                        .foregroundStyle(.white)
                        .frame(width:30, height: 30)
                }
                .offset(y: -12)
                Text("\(clientStatus.sleepTime.description) hr")
                    .foregroundStyle(.white)
                    .font(.largeTitle)
              
            }
        }
    }
}
#Preview {
    SleepTime()
}
