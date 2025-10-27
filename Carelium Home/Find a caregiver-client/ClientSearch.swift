//
//  ClientSearch.swift
//  Carelium Home
//
//  Created by Benard Chiherenge on 27/10/2025.
//

import SwiftUI

struct ClientSearch:View {
    @State var client:CareRecipient
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .stroke(lineWidth: 1)
                .foregroundStyle(.blue)
                .frame(height:200)
            HStack {
                VStack(alignment: .leading){
                    
                    Text(client.name)
                        .font(.title3)
                        .bold()
                    Text(client.description)
                    
                    Button{
                        
                    } label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 25)
                                .frame(width:140, height: 50)
                            Text("Select Client")
                                .foregroundStyle(.white)
                                .bold()
                        }
                    }
                }
                Spacer()
            }
            .padding()
        }
        .padding()
    }
}
#Preview {
    ClientSearch(client: clients[0])
}
