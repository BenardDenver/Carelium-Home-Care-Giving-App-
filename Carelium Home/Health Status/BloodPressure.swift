//
//  BloodPressure.swift
//  Carelium Home
//
//  Created by Benard Chiherenge on 27/10/2025.
//

import SwiftUI

struct BloodPressure:View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 200, height: 150)
                .foregroundStyle(.orange)
            VStack{
                HStack{
                    Text("Blood Pressure")
                        .font(.title2)
                        .bold()
                        .foregroundStyle(.white)
                    Image(systemName: "bolt.heart")
                        .resizable()
                        .foregroundStyle(.white)
                        .frame(width:25, height: 25)
                }
                .offset(y: -10)
                HStack{
                    Text("Top Pressure:")
                        .font(.default)
                        .bold()
                        .foregroundStyle(.white)
                        .offset(x: -20)
                    Text("\(clientStatus.topBloodPressure)")
                        .font(.title2)
                        .foregroundStyle(.white)
                        .offset(x: 14)
                }
                HStack{
                    Text("Bottom Pressure:")
                        .font(.default)
                        .bold()
                        .foregroundStyle(.white)
                        .offset(x: -8)
                    Text("\(clientStatus.bottomBloodPressure)")
                        .font(.title2)
                        .foregroundStyle(.white)
                }
            }
        }
    }
}
#Preview {
    BloodPressure()
}
