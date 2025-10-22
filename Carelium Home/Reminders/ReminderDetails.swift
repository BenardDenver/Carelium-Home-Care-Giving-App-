//
//  ReminderDetails.swift
//  Carelium Home
//
//  Created by Benard Chiherenge on 21/10/2025.
//

import SwiftUI

struct ReminderDetails:View {
    let reminder: ReminderInfo
    var body: some View {
        VStack(alignment: .leading, spacing: 20){
            HStack {
                Text(reminder.reminderTitle)
                    .font(.title)
                    .bold()
                Spacer()
                Button{
                    
                } label: {
                    Image(systemName: "x.circle")
                    frame(width:30, height: 30)
                }
                
            }
            Text("Time: \(reminder.date, formatter: Self.dateTimeFormatter)")
            Divider()
            Text("Description: \(reminder.description)")
            
        Spacer()
        }
        .padding()
        
        
    }
    
    
    
    //Date formatter
    static let dateTimeFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        formatter.timeStyle = .short
        return formatter
    }()
}
#Preview {
    ReminderDetails(reminder: reminders[1])
}

