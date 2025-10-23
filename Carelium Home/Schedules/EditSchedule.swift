//
//  EditSchedule.swift
//  Carelium Home
//
//  Created by Benard Chiherenge on 23/10/2025.
//

import SwiftUI

struct EditSchedule:View {
    @State var scheduleName:String = ""
    @State var isCompleted:Bool = false
    @Binding var isEditing:Bool
    var body: some View {
        VStack{
            Text("Edit Schedule")
                .font(.title2)
                .bold()
            Text("Title")
                .padding(.trailing, 335)
            TextEditor(text: $scheduleName)
                .background(Color.brown)
                .frame(height:80)
                .overlay{
                    Rectangle()
                        .stroke(lineWidth: 1)
                        .frame(height: 80)
                        
                }
                .padding(.bottom, -10)
            Toggle(isCompleted ? "Completed" : "Incomplete", isOn: $isCompleted)
                .padding()
            
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
                Spacer()
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
    EditSchedule(isEditing: .constant(true))
}
