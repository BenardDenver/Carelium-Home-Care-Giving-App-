//
//  Login-page.swift
//  Carelium Home
//
//  Created by Benard Chiherenge on 15/10/2025.
//

import SwiftUI

struct Login: View {
    @State var email:String = ""
    @State var password:String = ""
    @State var seePassword:Bool = false
    @State var isResetting:Bool = false
    @AppStorage("isClient") var isClient:Bool = false
    
    var body: some View{
        NavigationStack{
            VStack(spacing:20){
                
                Spacer()
                
                // textfields
                HStack{
                    TextField("Email", text: $email)
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
                
                HStack{
                    Group{
                        if seePassword{
                            TextField("Password", text: $password)
                        } else{
                            SecureField("Password", text: $password)
                        }
                    }
                    Button{
                        seePassword.toggle()
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
                
                // forgot password
                HStack{
                    Spacer()
                    Button("Forgot Password"){
                        isResetting.toggle()
                    }
                    .foregroundStyle(.orange)
                    .padding(.trailing,20)
                    .sheet(isPresented: $isResetting, onDismiss: dismiss){
                        ResetPassword(isResetting: $isResetting)
                            .presentationDetents([.medium, .large])
                    }
                }
                
                   //Login button
                Button{
                    
                } label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 25)
                            .fill(.orange)
                            .frame(width: 350,height:50)
                        Text("Log in")
                            .font(.title2)
                            .foregroundStyle(.white)
                            .bold()
                    }
                }
                
                // sign up
                HStack{
                    Text("New User?")
                    NavigationLink("Create Acoount"){
                        ChooseRole()
                    }
                    .foregroundStyle(.orange)
                }
                
                // sign with other accounts
                HStack{
                    Rectangle()
                        .frame(width: 150, height: 2)
                    Text("OR")
                        .foregroundStyle(.orange)
                    Rectangle()
                        .frame(width: 150, height: 2)
                }
                HStack{
                    //Apple button
                    Button{
                        
                    } label: {
                        ZStack {
                            Circle().stroke(lineWidth: 1)
                                .frame(width: 50, height: 50)
                            Image("apple-logo")
                                .resizable()
                                .frame(width: 30, height: 30)
                                
                        }
                        
                    }
                    .buttonStyle(.glass)
                    
                    //Facebook button
                    Button{
                        
                    } label: {
                        ZStack {
                            Circle().stroke(lineWidth: 1)
                                .frame(width: 50, height: 50)
                            Image("facebook")
                                .resizable()
                                .frame(width: 30, height: 30)
                        }
                        
                    }
                    .buttonStyle(.glass)
                    
                    //Linkedin button
                    Button{
                        
                    } label: {
                        ZStack {
                            Circle().stroke(lineWidth: 1)
                                .frame(width: 50, height: 50)
                            Image("linkedin")
                                .resizable()
                                .frame(width: 30, height: 30)
                        }
                        
                    }
                    .buttonStyle(.glass)
                    
                    //Google button
                    Button{
                        
                    } label: {
                        ZStack {
                            Circle().stroke(lineWidth: 1)
                                .frame(width: 50, height: 50)
                            Image("google")
                                .resizable()
                                .frame(width: 30, height: 30)
                        }
                        
                    }
                    .buttonStyle(.glass)
                }
                Text("Sign in with another account")
                    .foregroundStyle(.gray)
                Spacer()
                 
            }
            .padding()
            .navigationTitle("Login")
            
            
        }
        
    }
    func dismiss(){
        
    }
}
#Preview {
    Login()
}
