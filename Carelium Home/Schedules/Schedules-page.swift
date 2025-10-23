//
//  Schedules-page.swift
//  Carelium Home
//
//  Created by Benard Chiherenge on 15/10/2025.
//

import SwiftUI

struct Schedules: View {
    @State var isDeleting:Bool = false
    @State var isEditing:Bool = false
    @State var isAdding:Bool = false
    var body: some View {
        VStack{
            HStack{
                Text("Schedules")
                    .font(.title)
                    .bold()
                Spacer()
                
                //add button
                Button{
                    isAdding.toggle()
                } label: {
                    Image(systemName: "plus.circle")
                        .resizable()
                        .frame(width:30, height: 30)
                }
                .sheet(isPresented: $isAdding, onDismiss: dismiss){
                    AddSchedule(isAdding: $isAdding)
                }
            }
            .padding()
        }
        .toolbar(.hidden, for: .tabBar)
        
        
        VStack{
            ScrollView{
                ForEach(schedules){ schedule in
                    HStack{
                        
                        Button{
                            
                        } label: {
                            Image(systemName: schedule.isDone ? "checkmark.circle" : "circle")
                                .resizable()
                                .frame(width:25, height: 25)
                                .foregroundStyle(schedule.isDone ? .green : .blue)
                                .padding(5)
                        }
                        
                        Text(schedule.name)
                            .font(.subheadline)
                        Spacer()
                        // edit button
                        Button{
                            isEditing.toggle()
                        } label: {
                            Image(systemName:  "pencil.circle")
                                .resizable()
                                .foregroundStyle(.blue)
                                .frame(width: 25, height: 25)
                                
                        }
                        .sheet(isPresented: $isEditing, onDismiss: dismiss){
                            EditSchedule(isEditing: $isEditing)
                        }
                        
                        //delete button
                        Button{
                            isDeleting.toggle()
                        } label: {
                            Image(systemName:  "trash.circle")
                                .resizable()
                                .foregroundStyle(.red)
                                .frame(width: 25, height: 25)
                                .padding(5)
                        }
                        .sheet(isPresented: $isDeleting, onDismiss: dismiss){
                            DeleteSchedule(isDeleting: $isDeleting, schedule: schedule)
                        }
                    }
                    .overlay{
                        Rectangle()
                            .stroke(lineWidth: 1)
                            .frame(height: 65)
                    }
                    .padding(10)
                    .shadow(radius: 10)
                }
                .padding(10)
            }
        }
        
    }
    func dismiss(){
        
    }
}
#Preview {
    Schedules()
}
