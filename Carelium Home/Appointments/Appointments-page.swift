//
//  Appointments-page.swift
//  Carelium Home
//
//  Created by Benard Chiherenge on 15/10/2025.
//

import SwiftUI


    struct Appointments:View {
            @State var isEditing: Bool = false
            @State var isDeleting: Bool = false
            @State var isCreating: Bool = false
            
            var body: some View {
                VStack(alignment: .leading){
                    HStack {
                        Text("Appointments")
                            .font(.title)
                            .bold()
                            .padding(.trailing, 120)
                        // create button
                        Button{
                            isCreating.toggle()
                        } label: {
                            Image(systemName: "plus.circle")
                                .resizable()
                                .frame(width: 30, height: 30)
                                .foregroundStyle(.blue)
                        }
                        .sheet(isPresented: $isCreating, onDismiss: dismiss){
                            AddAppointment(isCreating:$isCreating)
                                .presentationDetents([.medium, .large])
                        }
                        .buttonStyle(.glass)
                    }
                }
                .padding()
                .toolbar(.hidden, for: .tabBar)
                VStack{
                    NavigationStack {
                        ScrollView{
                            ForEach(appointments){ appointment in
                                HStack{
                                    //tick button
                                    Button{
                                        
                                    } label: {
                                        Image(systemName: appointment.isDone ? "checkmark.circle" : "circle")
                                            .resizable()
                                            .frame(width:25, height: 25)
                                            .padding(5)
                                            .foregroundStyle(appointment.isDone ? .green : .blue)
                                    }
                                    
                                    Spacer()
                                    Text(appointment.name)
                                        .font(.subheadline)
                                    Spacer()
                                    Text("On: \(appointment.date)")
                                    Spacer()
                                    
                                    
                                    //edit button
                                    Button{
                                        isEditing.toggle()
                                    } label: {
                                        Image(systemName: "pencil.circle")
                                            .resizable()
                                            .frame(width:iconSize, height: iconSize)
                                            .foregroundStyle(.blue)
                                    }
                                    .sheet(isPresented: $isEditing, onDismiss: dismiss) {
                                        EditAppointment(isEditing: $isEditing )
                                            .presentationDetents([.medium, .large])
                                    }
                                    .buttonStyle(.glass)
                                    

                                    //delete button
                                    Button{
                                        isDeleting.toggle()
                                    } label: {
                                        Image(systemName: "trash.circle")
                                            .resizable()
                                            .foregroundStyle(.red)
                                            .frame(width: iconSize, height: iconSize)
                                            .padding(5)
                                    }
                                    .sheet(isPresented: $isDeleting, onDismiss: dismiss){
                                        DeleteAppointment(isDeleting: $isDeleting, appointment: appointment)
                                            .presentationDetents([.medium, .large])
                                    }
                                    .buttonStyle(.glass)
                                }
                                .overlay{
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(lineWidth: 1)
                                        .frame(height:65)
                                }
                                .padding()
                                }
                                
                            }
                            
                        }
                    }
                
            }
            func dismiss(){
                
            }
        }
    
#Preview {
    Appointments()
}
