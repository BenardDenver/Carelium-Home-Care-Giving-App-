//
//  AddApointment.swift
//  Carelium Home
//
//  Created by Benard Chiherenge on 22/10/2025.
//
import SwiftUI

struct AddAppointment : View {
    @State var appointmentName: String = ""
    @State var date:String = ""
    @State var isDone: Bool = false
    @Binding var isCreating:Bool
    var body: some View {
        VStack{
            Text("Add Appointment")
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
                    isCreating.toggle()
                } label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(lineWidth: 1)
                            .frame(width:150, height: 50)
                            .foregroundStyle(.green)
                        Text("Cancel")
                            .foregroundStyle(.green)
                    }
                }
                Button{
                   // method goes here
                    isCreating.toggle()
                } label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width:150, height: 50)
                            .foregroundStyle(.green)
                        Text("Add")
                            .foregroundStyle(.white)
                    }
                }
            }
        }
        .overlay{
            RoundedRectangle(cornerRadius: 10)
                .stroke(lineWidth: 1)
                .frame(height: 400)
                .foregroundStyle(.green)
        
        }
        .padding()
    }
}
#Preview{
    AddAppointment(isCreating: .constant(true))
}
