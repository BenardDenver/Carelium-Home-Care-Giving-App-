//
//  Untitled.swift
//  Carelium Home
//
//  Created by Benard Chiherenge on 23/10/2025.
//

import SwiftUI

struct ScheduleRow:View {
    @State var schedule: ScheduleDetails
    var body: some View{
        HStack{
            Button{
                
            } label: {
                Image(systemName: schedule.isDone ? "checkmark.circle" : "circle")
                    .resizable()
                    .frame(width:25, height: 25)
                    .foregroundStyle(schedule.isDone ? .green : .blue)
                    .padding(5)
            }
            
            Text(schedule.name)
                .font(.subheadline)
            Spacer()
            
            Button{
                
            } label: {
                Image(systemName:  "pencil.circle")
                    .resizable()
                    .foregroundStyle(.blue)
                    .frame(width: 25, height: 25)
                    
            }
            Button{
                
            } label: {
                Image(systemName:  "trash.circle")
                    .resizable()
                    .foregroundStyle(.red)
                    .frame(width: 25, height: 25)
                    .padding(5)
            }
        }
        .overlay{
            Rectangle()
                .stroke(lineWidth: 1)
                .frame(height: 65)
        }
        .padding(10)
        .shadow(radius: 10)
    }
}
#Preview {
    ScheduleRow(schedule: schedules[0])
}
