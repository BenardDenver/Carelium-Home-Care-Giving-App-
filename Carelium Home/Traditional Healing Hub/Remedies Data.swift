//
//  Remedies Data.swift
//  Carelium Home
//
//  Created by Benard Chiherenge on 21/10/2025.
//

import Foundation

struct RemedyInfo : Identifiable{
    var id: UUID = UUID()
    var illnessName: String
    var treeName: String
    var partUsed: String
    var description: String
}

var remediesData : [RemedyInfo] = [
   RemedyInfo(illnessName: "Sore eyes", treeName: "Sclerocarya birrea", partUsed: "Roots", description: "Steam directed into sore eyes"),
   RemedyInfo(illnessName: "Abdominal Pains", treeName: "Hypoxis obtusa", partUsed: "Bulb", description: "Chew bulb and swallow the sap"),
   RemedyInfo(illnessName: "Ulcers", treeName: "Brachylaena discolor", partUsed: "Leaves", description: "Leaves chewed and juice swallowed"),
   RemedyInfo(illnessName: "Earache", treeName: "Azanza garckeana", partUsed: "Roots", description: "Extract dropped into the ear"),
   RemedyInfo(illnessName: "Chest Pains", treeName: "Pellaea sp.", partUsed: "Leaves and Roots", description: "Burnt and smoke inhaled"),
   RemedyInfo(illnessName: "Cough and cold", treeName: "Lippia javanica", partUsed: "Leaves and Twigs", description: "Boil and drink"),
   RemedyInfo(illnessName: "Stomach pains", treeName: "Zingiber officinale Roscoe", partUsed: "Roots", description: "Chew roots and swallow")
]

