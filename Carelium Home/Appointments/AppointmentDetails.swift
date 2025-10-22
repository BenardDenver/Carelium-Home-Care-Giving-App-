//
//  AppointmentDetails.swift
//  Carelium Home
//
//  Created by Benard Chiherenge on 22/10/2025.
//

import Foundation

struct Appointment : Identifiable{
    var id: UUID = UUID()
    var name: String
    var date: String
    var isDone: Bool
}

var appointments:[Appointment] = [
    Appointment(name: "Consult Doctor", date: "20/10/25", isDone: false),
    Appointment(name: "Consult Chiropractor ", date: "21/9/25", isDone: true),
    Appointment(name: "Consult Dentist ", date: "22/9/25", isDone: false)
]
