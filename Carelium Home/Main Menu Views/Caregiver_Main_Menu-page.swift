//
//  Caregiver_Main_Menu-page.swift
//  Carelium Home
//
//  Created by Benard Chiherenge on 15/10/2025.
//

import SwiftUI

struct Caregiver_Main_Menu: View {
    var body: some View {
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
                                 .foregroundStyle(.orange)
                         }
                         .buttonStyle(.glass)
                         
                     }
                     Text("Care for your loved ones")
                         .padding(.trailing, 194)
                         .offset(y: -25)
                     
 
                 ///Find a client button
                    NavigationLink{
                        Find_Caregiver()
                     } label: {
                         HStack {
                             Image(systemName: "magnifyingglass.circle")
                                 .resizable()
                                 .frame(width: 50, height: 50)
                                 .offset(x: -58)
                                 .foregroundStyle(.orange)
                             Text("Find a client")
                                 .foregroundStyle(.orange)
                                 .bold()
                                 .padding()
                                 .offset(x: -53)
                         }
                         .overlay{
                             RoundedRectangle(cornerRadius: 20).stroke(Color.orange)
                                 .frame(width: 350, height: 90)
                         }
                         .foregroundColor(.blue)
                         .padding()
                     }
                     
                     /// Schedule Button
                     NavigationLink{
                         Schedules()
                     } label: {
                         HStack {
                             Image(systemName: "list.bullet.clipboard")
                                 .resizable()
                                 .frame(width: 40, height: 50)
                                 .offset(x: -66)
                                 .foregroundStyle(.orange)
                             
                             Text("Schedules")
                                 .bold()
                                 .padding()
                                 .offset(x: -55)
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
                        Clients_List()
                     } label: {
                         HStack {
                             Image(systemName: "person.text.rectangle.fill")
                                 .resizable()
                                 .frame(width: 60, height: 50)
                                 .offset(x: -67)
                                 .foregroundStyle(.orange)
                             Text("My clients")
                                 .bold()
                                 .padding()
                                 .offset(x: -67)
                                 .foregroundStyle(.orange)
                         }
                         .overlay{
                             RoundedRectangle(cornerRadius: 20).stroke(Color.orange)
                                 .frame(width: 350, height: 90)
                         }
                         .foregroundColor(.blue)
                         .padding()
                  }
                 
                     /// Traditional Healing Button
                     NavigationLink{
                        Emergency()
                     } label: {
                         HStack{
                         Image(systemName: "cross.case.fill")
                                 .resizable()
                                 .frame(width: 60, height: 50)
                                 .offset(x: -46)
                                 .foregroundStyle(.orange)
                             Text("Emergency Hub")
                                 .bold()
                                 .padding()
                                 .offset(x: -45)
                                 .foregroundStyle(.orange)
                         }
                         .overlay{
                             RoundedRectangle(cornerRadius: 20).stroke(Color.orange)
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
    Caregiver_Main_Menu()
}
