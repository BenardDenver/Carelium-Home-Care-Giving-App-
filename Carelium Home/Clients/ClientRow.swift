//
//  ClientRow.swift
//  Carelium Home
//
//  Created by Benard Chiherenge on 23/10/2025.
//

import SwiftUI

struct ClientRow:View {
    @State var client:CareRecipient
    @State var isDeleting:Bool = false
    var body: some View {
        NavigationStack {
            HStack{
                Text(client.name)
                    .padding(5)
                Spacer()
                
                //message button
                Button{
                    
                } label: {
                    Image(systemName: "ellipsis.message.fill")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .foregroundStyle(.green)
                }
                
                //Delete button
                Button{
                    
                } label: {
                    Image(systemName: "trash.circle")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .foregroundStyle(.red)
                        .padding(5)
                }
                
            }
            .overlay{
                Rectangle()
                    .stroke(lineWidth: 1)
                    .frame(height: 50)
            }
            .padding(10)
        }
        
    }
}
#Preview {
    ClientRow(client: clients[0])
}
