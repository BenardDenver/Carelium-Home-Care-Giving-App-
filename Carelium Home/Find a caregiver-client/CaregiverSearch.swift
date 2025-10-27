//
//  CaregiverSearch.swift
//  Carelium Home
//
//  Created by Benard Chiherenge on 27/10/2025.
//

import SwiftUI

struct CaregiverSearch:View {
    var caregiver:Caregiver
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .stroke(lineWidth: 1)
                .foregroundStyle(.blue)
                .frame(height:200)
            HStack {
                VStack(alignment: .leading){
                    
                    Text(caregiver.name)
                        .font(.title3)
                        .bold()
                    Text("Location: \(caregiver.location)")
                    Text("Experience: \(caregiver.experience) months")
                    Text("Qualification: \(caregiver.qualification)")
                    
                    Button{
                        
                    } label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 25)
                                .frame(width:140, height: 50)
                                .foregroundStyle(.blue)
                            Text("Book Now")
                                .foregroundStyle(.white)
                                .bold()
                        }
                    }
                    .buttonStyle(.glass)
                }
                Spacer()
            }
            .padding()
        }
        .padding()
    }
}
#Preview {
    CaregiverSearch(caregiver: caregivers[0])
}
