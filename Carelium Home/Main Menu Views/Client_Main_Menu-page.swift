//
//  Client_Main_Menu-page.swift
//  Carelium Home
//
//  Created by Benard Chiherenge on 15/10/2025.
//

import SwiftUI
import Foundation

struct ClientMenu: View{
    @State var isPresented:Bool = false
    
    var body: some View{
        NavigationStack{
            VStack(spacing: 30){
                HStack{
                    Text("Carelium Home")
                        .font(.largeTitle)
                        .bold()
                        .padding(.horizontal, 10)
                    Spacer()
                    Button{
                        isPresented.toggle()
                    } label: {
                        Image(systemName: "info.circle")
                            .resizable()
                            .frame(width:40, height: 40)
                            .padding(.trailing, 10)
                            .foregroundStyle(.orange)
                    }
                    .sheet(isPresented: $isPresented, onDismiss: dismiss) {
                        About(isPresented: $isPresented)
                            .presentationDetents([.medium, .large])
                    }
                }
                Text("Care for your loved ones")
                    .padding(.trailing, 194)
                    .offset(y: -25)
                
               
                ///Find a caregiver button
                NavigationLink{
                    Find_Caregiver()
                } label: {
                    HStack {
                        Image(systemName: "magnifyingglass.circle")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .offset(x: -40)
                            .foregroundStyle(.orange)
                        Text("Find a caregiver")
                            .bold()
                            .padding()
                            .offset(x: -40)
                            .foregroundStyle(.orange)
                    }
                    .overlay{
                        RoundedRectangle(cornerRadius: 20).stroke(Color.orange)
                            .frame(width: 350, height: 90)
                    }
                    .padding()
                }
                
                /// Health Status Button
                NavigationLink{
                    Health_Status()
                } label: {
                    HStack {
                        Image(systemName: "chart.line.text.clipboard")
                            .resizable()
                            .frame(width: 40, height: 50)
                            .offset(x: -50)
                            .foregroundStyle(.orange)
                        
                        Text("Health Status")
                            .bold()
                            .padding()
                            .offset(x: -44)
                            .foregroundStyle(.orange)
                    }
                    .overlay{
                        RoundedRectangle(cornerRadius: 20).stroke(Color.orange)
                            .frame(width: 350, height: 90)
                    }
                    .padding()
                }
                
                /// Reminders Button
                NavigationLink{
                    Reminders()
                } label: {
                    HStack {
                        Image(systemName: "bell.fill")
                            .resizable()
                            .frame(width: 40, height: 50)
                            .offset(x: -65)
                            .foregroundStyle(.orange)
                        Text("Reminders")
                            .bold()
                            .padding()
                            .offset(x: -57)
                            .foregroundStyle(.orange)
                    }
                    .overlay{
                        RoundedRectangle(cornerRadius: 20).stroke(Color.orange)
                            .frame(width: 350, height: 90)
                    }
                    
                    .padding()
                }
                
                /// Appointments Button
                NavigationLink{
                    Appointments()
                } label: {
                    HStack {
                        Image(systemName: "pencil.and.list.clipboard")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .offset(x: -47)
                            .foregroundStyle(.orange)
                        Text("Appointments")
                            .bold()
                            .padding()
                            .offset(x: -47)
                            .foregroundStyle(.orange)
                    }
                    .overlay{
                        RoundedRectangle(cornerRadius: 20).stroke(Color.orange)
                            .frame(width: 350, height: 90)
                    }
                    .padding()
                }
                
                /// Traditional Healing Button
                NavigationLink{
                    Traditional_Healing()
                } label: {
                    HStack{
                        Image(systemName: "tree.fill")
                            .resizable()
                            .frame(width: 40, height: 50)
                            .offset(x: -20)
                            .foregroundStyle(.orange)
                        Text("Traditional Healing Hub")
                            .bold()
                            .padding()
                            .offset(x: -8)
                            .foregroundStyle(.orange)
                        
                    }
                    .overlay{
                        RoundedRectangle(cornerRadius: 20).stroke(Color.orange)
                            .frame(width: 350, height: 90)
                        
                    }
                    .padding()
                    
                }
                
                Spacer()
                
                
            }
            
        }
    }
    
    func dismiss(){
        
    }
    
    
}

#Preview {
    ClientMenu()
}
