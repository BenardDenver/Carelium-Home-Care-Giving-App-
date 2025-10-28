//
//  Reset_Password-page.swift
//  Carelium Home
//
//  Created by Benard Chiherenge on 15/10/2025.
//

import SwiftUI

struct ResetPassword:View {
    @State var email:String = ""
    @State var newPassword:String = ""
    @State var confirmPassword:String = ""
    @State var seePassword:Bool = false
    @State var seeConfirmPassword:Bool = false
    @Binding var isResetting:Bool
    
    var body: some View {
        VStack(spacing:20){
            HStack {
                Text("Reset Password")
                    .font(.largeTitle)
                    .bold()
                    .padding()
                Spacer()
                Button{
                    isResetting.toggle()
                } label: {
                    Image(systemName: "xmark")
                        .resizable()
                        .foregroundStyle(.orange)
                        .frame(width: 25, height: 25)
                }
                .padding(.trailing, 15)
                .buttonStyle(.glass)
            }
               // .offset(y: 70)
            
       
            
            // textfields
            HStack{
                TextField("Enter your email", text: $email)
                Image(systemName: "person.fill")
                        .foregroundStyle(.gray)
                        .padding(.trailing, 5)
            }
            .padding()
            .overlay{
                RoundedRectangle(cornerRadius: 25)
                    .stroke(lineWidth: 1)
                    .foregroundStyle(.orange)
                
            }
            
            // New password
            HStack{
                Group{
                    if seePassword{
                        TextField("New Password", text: $newPassword)
                    } else{
                        SecureField("New Password", text: $newPassword)
                    }
                }
                Button{
                    seePassword.toggle()
                } label:{
                    Image(systemName: seeConfirmPassword ? "eye.slash" : "eye")
                        .foregroundStyle(.gray)
                }
                
                
            }
            .padding()
            .overlay{
                RoundedRectangle(cornerRadius: 25)
                    .stroke(lineWidth: 1)
                    .foregroundStyle(.orange)
                
            }
            
            //Confirm password
            HStack{
                Group{
                    if seeConfirmPassword{
                        TextField("Confirm Password", text: $confirmPassword)
                    } else{
                        SecureField("Confirm Password", text: $confirmPassword)
                    }
                }
                Button{
                    seeConfirmPassword.toggle()
                } label:{
                    Image(systemName: seePassword ? "eye.slash" : "eye")
                        .foregroundStyle(.gray)
                }
            }
            .padding()
            .overlay{
                RoundedRectangle(cornerRadius: 25)
                    .stroke(lineWidth: 1)
                    .foregroundStyle(.orange)
                
            }
            
            //Reset button
         Button{
             //method goes here..
             isResetting.toggle()
         } label: {
             ZStack{
                 RoundedRectangle(cornerRadius: 25)
                     .fill(.orange)
                     .frame(width: 350,height:50)
                 Text("Reset")
                     .font(.title2)
                     .foregroundStyle(.white)
                     .bold()
             }
         }
         .padding(.top)
        }
        .padding()
    }
}
#Preview {
    ResetPassword(isResetting: .constant(true))
}
