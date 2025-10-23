//
//  Delete Client.swift
//  Carelium Home
//
//  Created by Benard Chiherenge on 23/10/2025.
//

import SwiftUI

struct DeleteClient:View {
    @Binding var isDeleting:Bool
    @State var client:CareRecipient
    var body: some View {
        VStack(spacing: 10) {
            HStack {
                Image(systemName: "trash")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .foregroundStyle(.tint)
                    .tint(.red)
                    
            }
            .padding(10)
            .overlay{
                RoundedRectangle(cornerRadius: 10).fill(.red)
                    .opacity(0.1)
                    .frame(width: 80, height: 80)
            }
            .offset(y: -10)
           
                
            Text("Delete")
                .font(.title3)
            Text("""
                 Are you sure you want to delete 
                 \(client.name)?
                 """)
            .multilineTextAlignment(.center)
            .padding(.bottom)
            
            HStack(spacing: 20){
                Button{
                    isDeleting.toggle()
                } label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 10).stroke(Color.red.opacity(0.7))
                            .frame(width: 150, height: 40)
                            
                        Text("Cancel")
                            .foregroundStyle(Color.black)
                    }
                }
                
                Button{
                    //function that deletes the todo
                    isDeleting.toggle()
                } label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 10).fill(Color.red)
                            .frame(width: 150, height: 40)
                        Text("Confirm")
                            .foregroundStyle(Color.white)
                                
                    }
                }
            }
                
        }
        .padding()
        .overlay{
            RoundedRectangle(cornerRadius: 10).stroke()
                .foregroundStyle(.red)
                .frame(height: 300)
        }
      
    }
}
#Preview {
    DeleteClient(isDeleting: .constant(true), client: clients[0])
}
