//
//  Weight.swift
//  Carelium Home
//
//  Created by Benard Chiherenge on 27/10/2025.
//

import SwiftUI

struct Weight:View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 200, height: 150)
                .foregroundStyle(.red)
            VStack{
                HStack{
                    Text("Weight(KG)")
                        .font(.title2)
                        .bold()
                        .foregroundStyle(.white)
                    Image(systemName: "scalemass.fill")
                        .resizable()
                        .foregroundStyle(.white)
                        .frame(width:30, height: 25)
                }
                .offset(y: -12)
                Text(clientStatus.weight.description)
                    .foregroundStyle(.white)
                    .font(.largeTitle)
              
            }
        }
    }
}
#Preview {
    Weight()
}
