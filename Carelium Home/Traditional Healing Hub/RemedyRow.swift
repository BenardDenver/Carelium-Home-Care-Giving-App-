//
//  RemedyRow.swift
//  Carelium Home
//
//  Created by Benard Chiherenge on 21/10/2025.
//

import SwiftUI

struct RemedyRow:View {
    var remedy: RemedyInfo
    var body: some View {
        HStack {
            Text(remedy.illnessName)
                .font(.title2)
                .bold(true)
                .padding()
            Spacer()
        }
        .overlay{
            RoundedRectangle(cornerRadius: 10).stroke(Color.black, lineWidth: 1)
                .frame(height: 50)
        }
        .padding(10)
    }
}
#Preview {
        RemedyRow(remedy: remediesData[0])
}
