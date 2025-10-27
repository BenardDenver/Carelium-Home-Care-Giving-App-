//
//  Add_Health_Status-page.swift
//  Carelium Home
//
//  Created by Benard Chiherenge on 15/10/2025.
//

import SwiftUI

struct HealthStatus: View {
    @State var clients = ["John", "Jane", "Smith"]
    @State var selectedClient = "John"
    
    @State var heartRate:Int = 0
    @State var weight:Double = 0
    @State var topBloodPressure :Int = 0
    @State var bottomBloodPressure :Int = 0
    @State var sleepTime : Double = 0
    
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 20){
                Text("Client's Health Status")
                    .font(.title)
                    .bold()
                 
                HStack {
                    Text("Choose Client")
                    Spacer()
                    Picker("Choose Client", selection: $selectedClient){
                        ForEach(clients, id: \.self){ client in
                            Text(client)
                        }
                    }
                }
                VStack {
                    Text("Heart Rate(BPM)")
                        .foregroundStyle(.gray)
                        .offset(x:-120, y: -10)
                    TextField("Heart Rate(BPM)", value: $heartRate, formatter: NumberFormatter())
                        .keyboardType(.decimalPad)
                        .overlay{
                            RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 1)
                                .frame(height: 50)
                                .opacity(0.3)
                        }
                        .padding(.bottom, 15)
                }
                
                VStack {
                    Text("Weight(kg)")
                        .foregroundStyle(.gray)
                        .offset(x:-143, y: -7)
                    TextField("Weight(kg)", value: $weight, formatter: NumberFormatter())
                        .overlay{
                            RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 1)
                                .frame(height: 50)
                                .opacity(0.3)
                        }
                }
                VStack {
                    Text("Sleep Time(hr)")
                        .foregroundStyle(.gray)
                        .offset(x:-128, y: 10)
                    TextField("Sleep Time(hr)", value: $sleepTime, formatter: NumberFormatter())
                        .keyboardType(.decimalPad)
                        .overlay{
                            RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 1)
                                .frame(height: 50)
                                .opacity(0.3)
                        }
                        .padding(.top, 15)
                }
            }
            .padding()
        }
        Section(header: Text("Today's Blood Pressure")
            .font(.headline)
            .padding(.trailing, 180)
            .offset(y: 15)

        ){
            
            VStack {
                Text("Top Blood Pressure")
                    .offset(x:-110, y: -10)
                    .foregroundStyle(.gray)
                TextField("Top Blood Pressure", value: $topBloodPressure, formatter: NumberFormatter())
                    .overlay{
                        RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 1)
                            .frame(height: 50)
                            .opacity(0.3)
                    }
                    .keyboardType(.decimalPad)
            }
            VStack {
                Text("Bottom Blood Pressure")
                    .offset(x:-95, y: -10)
                    .foregroundStyle(.gray)
                TextField("Bottom Blood Pressure", value: $bottomBloodPressure, formatter: NumberFormatter())
                    .overlay{
                        RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 1)
                            .frame(height: 50)
                            .opacity(0.3)
                    }
                    .keyboardType(.decimalPad)
            }
        }
        .padding()
        Spacer()
        Button{
            
        } label: {
            ZStack{
                Rectangle()
                    .fill(.orange)
                    .frame(width:300, height: 50)
                Text("Send")
                    .foregroundStyle(.black)
                    
            }
        }
        .padding()
        
    }
}

#Preview {
    HealthStatus()
}
