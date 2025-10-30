//
//  ContentView.swift
//  Carelium Home
//
//  Created by Benard Chiherenge on 13/10/2025.
//

import SwiftUI

struct Startup: View {
    
    var body: some View {
        NavigationStack {
            ZStack {
                Image("startup-2")
                    .scaledToFit()
                VStack {
                    Text("Carelium Home")
                        .foregroundStyle(.white)
                        .font(.largeTitle)
                        .bold()
                        .offset(y: 150)
                    Text("Care for your loved ones")
                        .font(.subheadline)
                        .foregroundStyle(.white)
                        .bold()
                        .offset( y: 150)
                    
                    HStack(spacing:20){
                        NavigationLink{
                            Login()
                        }label: {
                            ZStack{
                                RoundedRectangle(cornerRadius: 25)
                                    .frame(width:150, height: 50)
                                    .foregroundStyle(.white)
                                Text("Sign in")
                                    .bold()
                                    .font(.title2)
                                    .foregroundStyle(.orange)
                            }
                        }
                        NavigationLink{
                            ChooseRole()
                        }label: {
                            ZStack{
                                RoundedRectangle(cornerRadius: 25).stroke(lineWidth: 1)
                                    .frame(width:150, height: 50)
                                    
                                    .foregroundStyle(.white)
                                Text("Sign up")
                                    .bold()
                                    .font(.title2)
                                    .foregroundStyle(.orange)
                            }
                        }
                    }
                    .padding(.top, 650)
                }
               
                
            }
        }
        
    }
}

#Preview {
    Startup()
}
