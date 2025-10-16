//
//  Client_Main_Menu-page.swift
//  Carelium Home
//
//  Created by Benard Chiherenge on 15/10/2025.
//

import SwiftUI
import Foundation

struct ClientMenu: View{
    var body: some View{
        
       NavigationStack{
                VStack(spacing: 30){
                    HStack{
                        Text("Carelium Home")
                            .font(.largeTitle)
                            .bold()
                            .padding(.horizontal, 10)
                        Spacer()
                        NavigationLink{
                            About()
                        } label: {
                            Image(systemName: "info.circle")
                                .resizable()
                                .frame(width:40, height: 40)
                                .padding(.trailing, 10)
                        }
                        
                    }
                    Text("Care for your loved ones")
                        .padding(.trailing, 194)
                        .offset(y: -25)
                    
//                    VStack{}
//                        .padding(.bottom, 50)
                ///Find a caregiver button
                   NavigationLink{
                       Find_Client_Caregiver()
                    } label: {
                        HStack {
                            Image(systemName: "magnifyingglass.circle")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .offset(x: -40)
                            Text("Find a caregiver")
                                .bold()
                                .padding()
                                .offset(x: -40)
                        }
                        .overlay{
                            RoundedRectangle(cornerRadius: 20).stroke(Color.blue)
                                .frame(width: 350, height: 90)
                        }
                        .foregroundColor(.blue)
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
                            
                            Text("Health Status")
                                .bold()
                                .padding()
                                .offset(x: -44)
                        }
                        .overlay{
                            RoundedRectangle(cornerRadius: 20).stroke(Color.blue)
                                .frame(width: 350, height: 90)
                        }
                        .foregroundColor(.blue)
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
                            Text("Reminders")
                                .bold()
                                .padding()
                                .offset(x: -57)
                        }
                        .overlay{
                            RoundedRectangle(cornerRadius: 20).stroke(Color.blue)
                                .frame(width: 350, height: 90)
                        }
                        .foregroundColor(.blue)
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
                            Text("Appointments")
                                .bold()
                                .padding()
                                .offset(x: -47)
                        }
                        .overlay{
                            RoundedRectangle(cornerRadius: 20).stroke(Color.blue)
                                .frame(width: 350, height: 90)
                        }
                        .foregroundColor(.blue)
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
                            Text("Traditional Healing Hub")
                                .bold()
                                .padding()
                                .offset(x: -8)
                                
                        }
                        .overlay{
                            RoundedRectangle(cornerRadius: 20).stroke(Color.blue)
                                .frame(width: 350, height: 90)
                            
                        }
                        .foregroundColor(.blue)
                        .padding()
                
                }
           
           Spacer()
               
            
        }
       
        }
    }
    
    


}

#Preview {
    ClientMenu()
}
