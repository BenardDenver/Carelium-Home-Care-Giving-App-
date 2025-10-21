//
//  RemedyDetails.swift
//  Carelium Home
//
//  Created by Benard Chiherenge on 21/10/2025.
//

import SwiftUI

struct RemedyDetails:View {
    var remedy: RemedyInfo
    var body: some View {
        VStack(alignment: .leading ,spacing: 10){
            HStack() {
                Text(remedy.illnessName)
                    .font(.largeTitle)
                    .bold()
               Spacer()
            }
            .offset(y:-220)
            
            Section(header:
                Text("Plant and Parts used")
                .opacity(0.5)
                .font(.headline)
              ){
                    Divider()
                    Text("Plant: \(remedy.treeName)")
                    .font(.title3)
                    Divider()
                    Text("Parts Used: \(remedy.partUsed)")
                        .font(.title3)
            }
              .offset(y: -200)
                
               
            
            Section(header: Text("Description on how to use")
                .opacity(0.5)
                .font(.headline)){
                    Divider()
                    Text(remedy.description)
                }
                .offset(y: -150)
                
               
                
            
        }
        .padding(10)
        
    }
}
#Preview {
    RemedyDetails(remedy: remediesData[0])
}

