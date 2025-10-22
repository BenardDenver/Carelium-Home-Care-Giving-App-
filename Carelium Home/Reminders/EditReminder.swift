//
//  EditReminder.swift
//  Carelium Home
//
//  Created by Benard Chiherenge on 21/10/2025.
//

import SwiftUI

struct EditReminder:View {
    @State var reminderTitle: String = ""
    @State var selectedDateTime = Date()
    @State var description:String = ""
    @Binding var isEditing:Bool
 
    var body: some View {
        VStack{
            Text("Edit Reminder")
                .font(.title2)
                .bold()
            HStack {
                TextField("Title", text: $reminderTitle)
            }
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
                    isEditing.toggle()
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
                    isEditing.toggle()
                } label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width:150, height: 50)
                            .foregroundStyle(.blue)
                        Text("Save")
                            .foregroundStyle(.white)
                    }
                }
            }
        }
        .padding()
    }
}
#Preview {
    EditReminder(isEditing: .constant(true))
}
