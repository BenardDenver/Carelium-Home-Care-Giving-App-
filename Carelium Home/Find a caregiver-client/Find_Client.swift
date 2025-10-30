//
//  Find_Client_Caregiver.swift
//  Carelium Home
//
//  Created by Benard Chiherenge on 15/10/2025.
//

import SwiftUI


struct Find_Client: View {
    @State private var searchClient:String = ""
    @State private var clientSelected:Bool = false
    var body: some View {
        
        NavigationStack {
            ScrollView {
                ForEach(filteredClients){ client in
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(lineWidth: 1)
                            .foregroundStyle(.orange)
                            .frame(height:200)
                        HStack {
                            VStack(alignment: .leading){
                                
                                Text(client.name)
                                    .font(.title3)
                                    .bold()
                                Text(client.description)
                                
                                Button{
                                    //method goes here
                                    clientSelected.toggle()
                                } label: {
                                    ZStack{
                                        RoundedRectangle(cornerRadius: 25)
                                            .frame(width:140, height: 50)
                                            .foregroundStyle(.orange)
                                        Text(clientSelected ? "Selected" : "Select Client")
                                            .foregroundStyle(.white)
                                            .bold()
                                    }
                                }
                            }
                            Spacer()
                        }
                        .navigationTitle("Clients List")
                        .padding()
                    }
                    .padding()
                }
                .searchable(text: $searchClient, prompt: "Search for a client")
            }
        }
        .searchable(text: $searchClient, prompt: "Search for a client")
        .toolbar(.hidden, for: .tabBar)
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
