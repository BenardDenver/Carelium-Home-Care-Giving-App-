//
//  EditAppointment.swift
//  Carelium Home
//
//  Created by Benard Chiherenge on 22/10/2025.
//

import SwiftUI

struct EditAppointment : View {
    @State var appointmentName: String = ""
    @State var date:String = ""
    @State var isDone: Bool = false
    @Binding var isEditing:Bool
    var body: some View {
        VStack{
            Text("Edit Appointment")
                .font(.title2)
                .bold()
            VStack {
                TextField("Appointment Name", text: $appointmentName)
                    .padding()
                    .overlay{
                        RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 1)
                            .frame(height: 50)
                    }
                TextField("Date", text: $date)
                    .padding()
                    .overlay{
                        RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 1)
                            .frame(height: 50)
                    }
                Toggle(isDone ? "Completed" : "Not Completed", isOn: $isDone)
            }
            .padding()
            
              
               
            
          // buttons
            HStack(spacing:25){
                Button{
                    isEditing.toggle()
                } label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(lineWidth: 1)
                            .frame(width:150, height: 50)
                            .foregroundStyle(.orange)
                        Text("Cancel")
                            .foregroundStyle(.orange)
                    }
                }
                Button{
                   // method goes here
                    isEditing.toggle()
                } label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width:150, height: 50)
                            .foregroundStyle(.orange)
                        Text("Save")
                            .foregroundStyle(.white)
                    }
                }
            }
        }
        .overlay{
            RoundedRectangle(cornerRadius: 10)
                .stroke(lineWidth: 1)
                .frame(height: 400)
                .foregroundStyle(.orange)
        
        }
        .padding()
    }
}
#Preview{
    EditAppointment(isEditing: .constant(true))
}

