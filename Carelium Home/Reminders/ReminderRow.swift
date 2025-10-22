//
//  ReminderRow.swift
//  Carelium Home
//
//  Created by Benard Chiherenge on 21/10/2025.
//
import SwiftUI

struct ReminderRow: View {
    @State var reminder:ReminderInfo
    var body: some View {
        NavigationStack {
            HStack{
                Button{
                    
                } label: {
                    Image(systemName: "circle")
                        .padding()
                }
                Text(reminder.reminderTitle)
                Spacer()
                Button{
                    
                } label: {
                    Image(systemName: "pencil.circle")
                }
                Button{
                    
                } label: {
                    Image(systemName: "bell")
                        .padding(8)
                }
                
              
               
                
            }
            .overlay{
                RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 1)
                    .frame(height: 50)
            }
            .padding()
        }
    }
}

#Preview {
    ReminderRow(reminder: reminders[0])
}
