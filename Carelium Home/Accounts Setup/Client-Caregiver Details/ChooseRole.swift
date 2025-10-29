//
//  ChooseRole.swift
//  Carelium Home
//
//  Created by Benard Chiherenge on 28/10/2025.
//
import SwiftUI

struct ChooseRole:View {
    @AppStorage("isClient") var isClient:Bool = false
    @State private var choiceClient: Bool = false
    @State private var choiceCaregiver: Bool = false
    var body: some View {
        NavigationStack {
            ZStack{
                Image("startup")
                    .blur(radius: 5)
                    .opacity(0.5)
                VStack{
                    Text("Choose Your Role")
                        .font(.largeTitle)
                        .bold()
                    
                    Button{
                        isClient = true
                        choiceClient.toggle()
                    } label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 25)
                                .frame(width: 350,height: 50)
                                .foregroundStyle(.orange)
                            Text("Care Recipient")
                                .foregroundStyle(.white)
                                .bold()
                                .font(.title2)
                        }
                    }
                    .navigationDestination(isPresented: $choiceClient){
                        CareRecipientAccount()
                    }
                    
                    Button{
                        isClient = false
                        choiceCaregiver.toggle()
                    } label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 25)
                                .frame(width: 350,height: 50)
                                .foregroundStyle(.white)
                            Text("Caregiver")
                                .foregroundStyle(.black)
                                .bold()
                                .font(.title2)
                        }
                    }
                    .navigationDestination(isPresented: $choiceCaregiver){
                        CaregiverAccount()
                    }
                }
            }
        }
    }
}
#Preview {
    ChooseRole()
}
