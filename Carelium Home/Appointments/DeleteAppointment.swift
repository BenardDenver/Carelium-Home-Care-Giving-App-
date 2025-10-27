//
//  DeleteAppointment.swift
//  Carelium Home
//
//  Created by Benard Chiherenge on 22/10/2025.
//

import SwiftUI

struct DeleteAppointment:View {
    @Binding var isDeleting:Bool
    @State var appointment:Appointment
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
                 \(appointment.name) Appointment?
                 """)
            .multilineTextAlignment(.center)
            .padding(.bottom)
            
            HStack(spacing: 20){
                Button{
                    isDeleting.toggle()
                } label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 10).stroke(Color.red)
                            .frame(width: 150, height: 40)
                        Text("Cancel")
                            .foregroundStyle(.red)
                    }
                }
              
                
                Button{
                    //function that deletes the appointment
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
        .shadow(radius: 10)
        
    }
}
#Preview {
    DeleteAppointment(isDeleting: .constant(true), appointment: appointments[0])
}
