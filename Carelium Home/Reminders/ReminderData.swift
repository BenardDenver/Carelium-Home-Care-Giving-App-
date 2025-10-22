//
//  ReminderData.swift
//  Carelium Home
//
//  Created by Benard Chiherenge on 21/10/2025.
//

import Foundation

struct ReminderInfo: Identifiable{
    var id: UUID = UUID()
    var reminderTitle: String
    var date: Date
    var description:String
    var isTurnedOn: Bool
}
                        
var reminders:[ReminderInfo] = [
    ReminderInfo(reminderTitle: "John's meds", date: .now, description: "", isTurnedOn: false),
    ReminderInfo(reminderTitle: "Bathe Jane", date: Date(), description: "Warm bath", isTurnedOn: true)
]

