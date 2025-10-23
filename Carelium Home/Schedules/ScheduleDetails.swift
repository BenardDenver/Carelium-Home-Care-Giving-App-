//
//  ScheduleDetails.swift
//  Carelium Home
//
//  Created by Benard Chiherenge on 23/10/2025.
//

import Foundation

struct ScheduleDetails : Identifiable{
    var id:UUID = UUID()
    var name:String
    var isDone:Bool
}

var schedules:[ScheduleDetails] = [
    ScheduleDetails(name: "Wash granny clothes", isDone: false),
    ScheduleDetails(name: "Check client health ", isDone: true)
]
