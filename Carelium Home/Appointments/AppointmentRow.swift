//
//  AppointmentRow.swift
//  Carelium Home
//
//  Created by Benard Chiherenge on 22/10/2025.
//

import SwiftUI

struct AppointmentRow:View {
    @State var appointment: Appointment
    var body: some View {
        HStack{
            //tick button
            Button{
                
            } label: {
                Image(systemName: "circle")
                    .resizable()
                    .frame(width:25, height: 25)
                    .padding(5)
            }
            Spacer()
            Text(appointment.name)
            Text("On: \(appointment.date)")
            Spacer()
            //edit button
            Button{
                
            } label: {
                Image(systemName: "pencil.circle")
                    .resizable()
                    .frame(width:iconSize, height: iconSize)
            }
            //delete button
            Button{
                
            } label: {
                Image(systemName: "trash.circle")
                    .resizable()
                    .foregroundStyle(.red)
                    .frame(width: iconSize, height: iconSize)
                    .padding(5)
            }
        } 
        .overlay{
            RoundedRectangle(cornerRadius: 10)
                .stroke(lineWidth: 1)
                .frame(height:70)
        }
        .padding()
    }
}
#Preview {
    AppointmentRow(appointment: appointments[0])
}
