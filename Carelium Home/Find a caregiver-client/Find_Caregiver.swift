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
        NavigationStack {
            ScrollView {
                ForEach(filteredCaregivers){ caregiver in
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(lineWidth: 1)
                            .foregroundStyle(.orange)
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
                                            .foregroundStyle(.orange)
                                        Text(isBooked ? "Booked" : "Book Now")
                                            .foregroundStyle(.white)
                                            .bold()
                                    }
                                }
                                .buttonStyle(.glass)
                            }
                            Spacer()
                        }
                        .navigationTitle("Caregivers List")
                        .padding()
                    }
                    .padding()
                    
                }
                .searchable(text: $searchCaregiver, prompt: "Search for a caregiver")
            }
        }
       
        //.toolbar(.hidden, for: .tabBar)
        
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
