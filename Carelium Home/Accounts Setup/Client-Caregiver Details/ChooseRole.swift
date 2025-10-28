//
//  ChooseRole.swift
//  Carelium Home
//
//  Created by Benard Chiherenge on 28/10/2025.
//
import SwiftUI

struct ChooseRole:View {
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
                    NavigationLink{
                    CareRecipientAccount()
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
                    NavigationLink{
                    CaregiverAccount()
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
                }
            }
        }
    }
}
#Preview {
    ChooseRole()
}
