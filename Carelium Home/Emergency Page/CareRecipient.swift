//
//  CareRecipient.swift
//  Carelium Home
//
//  Created by Benard Chiherenge on 22/10/2025.
//

import Foundation

struct CareRecipient: Identifiable{
    var id: UUID = UUID()
    var name: String
    var contact: String
    var description:String
}

var clients: [CareRecipient] = [
    CareRecipient(name: "John Doe", contact: "123344", description: "An elderly man with a history of diabetes"),
    CareRecipient(name: "Jane Doe", contact: "123456", description: "An elderly woman with a history of hypertension"),
    CareRecipient(name: "John Smith", contact: "1234567890", description: "A young man with a history of asthma")
]
