//
//  Signup-page.swift
//  Carelium Home
//
//  Created by Benard Chiherenge on 15/10/2025.
//

import SwiftUI

struct Signup:View {
    @State var firstName:String = ""
    @State var lastName:String = ""
    @State var email:String = ""
    @State var password:String = ""
    @State var confirmPassword = ""
    @State var seePassword:Bool = false
    @State var seeConfirmPassword:Bool = false
    @AppStorage("isClient") var isClient:Bool = false
    @State var createdAccount:Bool = false
    
    var body: some View {
        NavigationStack{
            VStack(spacing: 20) {
                Text("Enter your details:")
                    .font(.headline)
                    .foregroundStyle(.gray)
                    .padding(.trailing, 200)
                //text fields
                HStack{
                    TextField("First Name", text: $firstName)
                        .padding()
                        .frame(width: 150)
                        .overlay{
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(lineWidth: 1)
                                .foregroundStyle(.orange)
                                .frame(height: 50)
                            
                        }
                    Spacer()
                    TextField("Last Name", text: $lastName)
                        .padding()
                        .frame(width: 200)
                        .overlay{
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(lineWidth: 1)
                                .foregroundStyle(.orange)
                                .frame(height: 50)
                            
                        }
                }
                HStack {
                    TextField("Email", text: $email)
                        .padding()
                    Image(systemName: "person.fill")
                        .foregroundStyle(.gray)
                        .padding(.trailing, 18)
                }
                .overlay{
                    RoundedRectangle(cornerRadius: 25)
                        .stroke(lineWidth: 1)
                        .foregroundStyle(.orange)
                        .frame(height: 50)
                    
                }
                
                
                //password
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
                
                //Sign up button
                Button{
                    //method goes here
                    createdAccount.toggle()
                } label: {
                    ZStack{
                        RoundedRectangle(cornerRadius: 25)
                            .fill(.orange)
                            .frame(width: 350,height:50)
                        Text("Create Account")
                            .font(.title2)
                            .foregroundStyle(.white)
                            .bold()
                    }
                }
                .navigationDestination(isPresented: $createdAccount){
//                    if isClient == true{
//                        ClientMenu()
//                    } else{
//                        Caregiver_Main_Menu()
//                    }
                    TabView_Page()
                }
            
             
             
                HStack{
                    Text("Already have an account?")
                        .foregroundStyle(.gray)
                    NavigationLink("Sign in"){
                        Login()
                    }
                    .foregroundStyle(.orange)
                }
                
                //empty view for space
                HStack{
                    
                }
                .padding(80)
                
            }
            .navigationTitle("Sign Up")
            .padding()
        }
    }
}
#Preview {
    Signup()
}

