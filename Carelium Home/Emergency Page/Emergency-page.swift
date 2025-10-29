//
//  Emergency-page.swift
//  Carelium Home
//
//  Created by Benard Chiherenge on 15/10/2025.
//

import SwiftUI

struct Emergency:View {
    @State var isOnInfo: Bool = false
    
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Text("Emergency Alert")
                    .font(.title)
                    .bold()
                Spacer()
                
                //info button
                Button{
                    isOnInfo.toggle()
                } label: {
                    Image(systemName: "exclamationmark.warninglight.fill")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundStyle(.orange)
                        
                }
                .sheet(isPresented: $isOnInfo, onDismiss: dismiss){
                    EmergencyInfo(isOnInfo: $isOnInfo)
                        .presentationDetents([.medium, .large])
                }
                .buttonStyle(.glass)
            }
            
        }
        .padding()
        .toolbar(.hidden, for: .tabBar)
        
        Section(header:
                    Text("Clients:")
            .bold()
            .offset(x: -155, y: 10)
        ) {
            VStack{
                NavigationStack {
                    ScrollView {
                        ForEach(clients) { client in
                            HStack{
                                Text(client.name)
                                    .padding()
                                Spacer()
                                // Message Button
                                Button{
                                    
                                } label:{
                                    Image(systemName: "ellipsis.bubble.fill")
                                        .resizable()
                                        .frame(width:30, height: 30)
                                        .foregroundStyle(.green)
                                }
                                .buttonStyle(.glass)
                                
                                // Emergency call button
                                Button{
                                    
                                } label:{
                                    Image(systemName: "car.front.waves.up.fill")
                                        .resizable()
                                        .frame(width:30, height: 30)
                                        .foregroundStyle(.red)
                                }
                                .padding()
                                .buttonStyle(.glass)
                            }
                            .overlay{
                                RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 1)
                                    .frame(height: 50)
                                    .foregroundStyle(.orange)
                            }
                            .padding()
                        }
                    }
                    
                }
            }
        }
    }
    func dismiss(){
        
    }
}
#Preview {
    Emergency()
}
