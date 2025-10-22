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
}

var clients: [CareRecipient] = [
    CareRecipient(name: "John Doe", contact: "123344"),
    CareRecipient(name: "Jane Doe", contact: "123456"),
    CareRecipient(name: "John Smith", contact: "1234567890")
]
