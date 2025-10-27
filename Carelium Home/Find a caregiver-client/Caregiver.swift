//
//  Caregiver.swift
//  Carelium Home
//
//  Created by Benard Chiherenge on 27/10/2025.
//

import Foundation

struct Caregiver: Identifiable{
    var id: UUID = UUID()
    var name:String
    var experience:Int
    var location:String
    var qualification:String
}

var caregivers:[Caregiver] = [
    Caregiver(name: "Benard Chiherenge", experience: 10, location: "Nairobi", qualification: "Nurse Aid Certificate"),
    Caregiver(name: "Kofi Kofi", experience: 5, location: "Nairobi", qualification: "Diploma in Clinical Nursing"),
    Caregiver(name: "Moses Mwaka", experience: 4, location: "Mombasa", qualification: "Diploma in Caregiving")
]
