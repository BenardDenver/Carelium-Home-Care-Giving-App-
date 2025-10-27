//
//  Find_Caregiver.swift
//  Carelium Home
//
//  Created by Benard Chiherenge on 27/10/2025.
//

import SwiftUI

struct Find_Caregiver: View {
    @State var searchCaregiver:String = ""
    @State var isBooked: Bool = false
    var body: some View {
        HStack{
            Text("Caregivers List")
                .font(.title)
                .bold()
            Spacer()
        }
        .toolbar(.hidden, for: .tabBar)
        .padding()
        
        NavigationStack {
            ScrollView {
                ForEach(filteredCaregivers){ caregiver in
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(lineWidth: 1)
                            .foregroundStyle(.blue)
                            .frame(height:200)
                        HStack {
                            VStack(alignment: .leading){
                                
                                Text(caregiver.name)
                                    .font(.title3)
                                    .bold()
                                Text("Location: \(caregiver.location)")
                                Text("Experience: \(caregiver.experience) months")
                                Text("Qualification: \(caregiver.qualification)")
                                
                                Button{
                                    isBooked.toggle()
                                } label: {
                                    ZStack{
                                        RoundedRectangle(cornerRadius: 25)
                                            .frame(width:140, height: 50)
                                            .foregroundStyle(.blue)
                                        Text(isBooked ? "Booked" : "Book Now")
                                            .foregroundStyle(.white)
                                            .bold()
                                    }
                                }
                                .buttonStyle(.glass)
                            }
                            Spacer()
                        }
                        .padding()
                    }
                    .padding()
                }
                
            }
        }
        .searchable(text: $searchCaregiver, prompt: "Search for a caregiver")
    }
    var filteredCaregivers:[Caregiver]{
        if searchCaregiver.isEmpty{
            return caregivers
        } else{
            return caregivers.filter {$0.name.localizedCaseInsensitiveContains(searchCaregiver)}
        }
    }
    
}
#Preview {
    Find_Caregiver()
}
