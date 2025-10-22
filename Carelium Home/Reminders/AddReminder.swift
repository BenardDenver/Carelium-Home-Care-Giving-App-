//
//  AddReminder.swift
//  Carelium Home
//
//  Created by Benard Chiherenge on 21/10/2025.
//

import SwiftUI

struct AddReminder:View {
    @State var reminderTitle: String = ""
    @State var selectedDateTime = Date()
    @State var description:String = ""
    @Binding var isCreating:Bool
    var body: some View {
        VStack{
            Text("Add Reminder")
                .font(.title2)
                .bold()
            TextField("Title", text: $reminderTitle)
                .padding()
                .overlay{
                    RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 1)
                        .frame(height: 50)
                }
              
             
            
            DatePicker("Select Date and Time", selection: $selectedDateTime)
               
            Text("Description")
                .bold()
                .padding(.trailing,278)
            TextEditor(text: $description)
                .frame(height:250)
                .overlay{
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(lineWidth: 1)
                }
                .padding(.bottom)
               
            
          // buttons
            HStack(spacing:25){
                Button{
                    isCreating.toggle()
                } label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(lineWidth: 1)
                            .frame(width:150, height: 50)
                            .foregroundStyle(.red)
                        Text("Cancel")
                            .foregroundStyle(.red)
                    }
                }
                Button{
                   // method goes here
                    isCreating.toggle()
                } label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width:150, height: 50)
                            .foregroundStyle(.blue)
                        Text("Add")
                            .foregroundStyle(.white)
                    }
                }
            }
        }
        .padding()
    }
}
#Preview {
    AddReminder(isCreating: .constant(true))
}
