//
//  Clients_List.swift
//  Carelium Home
//
//  Created by Benard Chiherenge on 15/10/2025.
//

import SwiftUI

struct Clients_List: View {
    @State var isDeleting : Bool = false
    var body: some View {
        VStack{
            HStack{
                Text("My Clients")
                    .font(.title)
                    .bold()
                Spacer()
            }
            
        }
        .toolbar(.hidden, for: .tabBar)
        .padding()
        
        NavigationStack {
            ScrollView {
                ForEach(clients) { client in
                    HStack{
                        Text(client.name)
                            .padding(5)
                        Spacer()
                        
                        //message button
                        NavigationLink{
                            Chat()
                        } label: {
                            Image(systemName: "ellipsis.message.fill")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .foregroundStyle(.green)
                        }
                        
                        //Delete button
                        Button{
                            isDeleting.toggle()
                        } label: {
                            Image(systemName: "trash.circle")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .foregroundStyle(.red)
                                .padding(5)
                        }
                        .sheet(isPresented: $isDeleting, onDismiss: dismiss){
                            DeleteClient(isDeleting: $isDeleting, client: client)
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
    }
    func dismiss(){
        
    }
}
#Preview{
    Clients_List()
}
