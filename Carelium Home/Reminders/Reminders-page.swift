//
//  Reminders-page.swift
//  Carelium Home
//
//  Created by Benard Chiherenge on 15/10/2025.
//

import SwiftUI

public var iconSize: CGFloat = 25

struct Reminders:View {
    @State var isEditing: Bool = false
    @State var isDeleting: Bool = false
    @State var isCreating: Bool = false
    
    @State var isTurnedOn:Bool = false
    
    var body: some View {
        VStack(alignment: .leading){
            HStack {
                Text("Reminders")
                    .font(.title)
                    .bold()
                    .padding(.trailing, 160)
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
                    AddReminder(isCreating:$isCreating)
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
                    ForEach(reminders){ reminder in
                        HStack{
                            Text(reminder.reminderTitle)
                                .padding(5)
                            Spacer()
                            //Edit Button
                            Button{
                                isEditing.toggle()
                            } label: {
                                Image(systemName: "pencil.circle")
                                    .resizable()
                                    .frame(width:iconSize, height: iconSize)
                                    .foregroundStyle(.blue)
                            }
                            .sheet(isPresented: $isEditing,
                                   onDismiss: dismiss) {
                                EditReminder( isEditing: $isEditing)
                                    .presentationDetents([.medium, .large])
                            }
                                   .buttonStyle(.glass)
                            
                            //Alarm Button
                            Button{
                               
                                //method goes here
                                isTurnedOn.toggle()
                            } label: {
                                Image(systemName: reminder.isTurnedOn ? "bell" : "bell.slash")
                                    .resizable()
                                    
                                    .frame(width: iconSize, height: iconSize)
                                    .foregroundStyle(.green)
                            }
                            .buttonStyle(.glass)
                            
                            //Delete Button
                            Button{
                                isDeleting.toggle()
                            } label: {
                                Image(systemName: "trash.circle")
                                    .resizable()
                                    .padding(8)
                                    .frame(width: 40, height: 40)
                                    .foregroundStyle(.red)
                            }
                            .sheet(isPresented: $isDeleting, onDismiss: dismiss){
                                DeleteReminder(isDeleting: $isDeleting, reminder: reminder)
                                    .presentationDetents([.medium, .large])
                            }
                            .presentationDetents([.medium, .large])
                            .buttonStyle(.glass)
                            
                            
                            
                            
                        }
                        .overlay{
                            RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 1)
                                .frame(height: 50)
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
    Reminders()
}
