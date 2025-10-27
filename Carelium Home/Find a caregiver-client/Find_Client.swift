//
//  Find_Client_Caregiver.swift
//  Carelium Home
//
//  Created by Benard Chiherenge on 15/10/2025.
//

import SwiftUI


struct Find_Client: View {
    @State var searchClient:String = ""
    var body: some View {
        HStack{

            Text("Clients List")
                .font(.title)
                .bold()
            Spacer()
        }
        .toolbar(.hidden, for: .tabBar)
        .padding()
        
        
        NavigationStack {
            ScrollView {
                ForEach(filteredClients){ client in
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
        }
        .searchable(text: $searchClient, prompt: "Search for a client")
    }
    var filteredClients:[CareRecipient]{
        if searchClient.isEmpty{
            return clients
        } else{
            return clients.filter {$0.name.localizedCaseInsensitiveContains(searchClient)}
        }
    }
} 

#Preview {
    Find_Client()
}
