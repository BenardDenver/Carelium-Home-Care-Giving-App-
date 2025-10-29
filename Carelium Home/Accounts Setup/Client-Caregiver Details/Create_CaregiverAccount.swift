//
//  Create_CaregiverAccount.swift
//  Carelium Home
//
//  Created by Benard Chiherenge on 15/10/2025.
//

import SwiftUI

struct CaregiverAccount:View {
    @State var firstName:String = ""
    @State var lastName:String = ""
    @State var age: Int = Int()
    @State var location:String = ""
    @State var contactNumber: String = ""
    @State var qualifications:String = ""
    @State var experience:Int = 0
    @State var savedDetails:Bool = false
    @State var showingDatePicker:Bool = false

    var body: some View {
        NavigationStack{
                VStack(spacing: 20){
                    Text("Enter caregiver details")
                        .font(.headline)
                        .foregroundStyle(.gray)
                        .padding(.trailing, 157)
                    
                   TextField("First Name", text: $firstName)
                        .padding()
                        .overlay{
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(lineWidth: 1)
                                .frame(height: 50)
                                .foregroundStyle(.orange)
                        }
                    TextField("Last Name", text: $lastName)
                         .padding()
                         .overlay{
                             RoundedRectangle(cornerRadius: 25)
                                 .stroke(lineWidth: 1)
                                 .frame(height: 50)
                                 .foregroundStyle(.orange)
                         }
                    
                    HStack {
                        Text("Age")
                            .padding()
                            .foregroundStyle(.gray).opacity(0.6)
                        TextField("", value: $age, formatter: NumberFormatter())
                            .keyboardType(.numberPad)
                            .padding()
                    }
                    .overlay{
                        RoundedRectangle(cornerRadius: 25)
                            .stroke(lineWidth: 1)
                            .frame(height: 50)
                            .foregroundStyle(.orange)
                    }
                    
                    TextField("Location", text: $location)
                         .padding()
                         .overlay{
                             RoundedRectangle(cornerRadius: 25)
                                 .stroke(lineWidth: 1)
                                 .frame(height: 50)
                                 .foregroundStyle(.orange)
                         }
                    
                    TextField("Phone Number", text: $contactNumber)
                         .padding()
                         .overlay{
                             RoundedRectangle(cornerRadius: 25)
                                 .stroke(lineWidth: 1)
                                 .frame(height: 50)
                                 .foregroundStyle(.orange)
                         }
                    
                    TextField("Qualification(s)", text: $qualifications)
                         .padding()
                         .overlay{
                             RoundedRectangle(cornerRadius: 25)
                                 .stroke(lineWidth: 1)
                                 .frame(height: 50)
                                 .foregroundStyle(.orange)
                         }
                    HStack {
                        Text("Experience(mos)")
                            .padding()
                            .foregroundStyle(.gray)
                            .opacity(0.6)
                       
                        TextField("", value: $experience, formatter: NumberFormatter())
                            .keyboardType(.numberPad)
                            .padding()
                    }
                    .overlay{
                        RoundedRectangle(cornerRadius: 25)
                            .stroke(lineWidth: 1)
                            .frame(height: 50)
                            .foregroundStyle(.orange)
                    }
                   
                    
                    //save button
                 Button{
                     //Method goes here
                     savedDetails.toggle()
                 } label: {
                     ZStack{
                         RoundedRectangle(cornerRadius: 25)
                             .fill(.orange)
                             .frame(width: 350,height:50)
                         Text("Save Details")
                             .font(.title2)
                             .foregroundStyle(.white)
                             .bold()
                     }
                 }
                 .navigationDestination(isPresented: $savedDetails){
                     Signup()
                 }
                 .padding(.top)
                    Text("Save details to proceed to create account")
                        .foregroundStyle(.gray)
                 
                    
                }
                .padding()
                .navigationTitle("Caregiver Account")
            
            
        }
    }
    
}
#Preview {
    CaregiverAccount()
}
