//
//  AddSchedule.swift
//  Carelium Home
//
//  Created by Benard Chiherenge on 23/10/2025.
//

import SwiftUI

struct AddSchedule:View {
    @State var scheduleName:String = ""
    @Binding var isAdding: Bool
    var body: some View {
        VStack{
            Text("Add Schedule")
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
                .padding(.bottom)
            HStack(spacing:25){
                Button{
                    isAdding.toggle()
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
                    isAdding.toggle()
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
    AddSchedule(isAdding: .constant(true))
}
