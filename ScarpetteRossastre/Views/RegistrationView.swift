//
//  RegistrationView.swift
//  LoginView
//
//  Created by Antonio Castaldo on 19/12/21.
//

import SwiftUI

struct RegistrationView: View {
        @State var isLoggedIn: Bool = false
        @State var username: String = ""
        @State var password: String = ""
        @State var isPresented: Bool = false
        @AppStorage("username") var storedUsername: String = ""
        @AppStorage("password") var storedPassword: String = ""
        @State var loginAlert = ""
        @State var loginTitle = ""
        var body: some View {
            VStack {
                Image("undraw_friends_r511")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                    .padding()
                    .padding(.top, 20)
                Text("Register your account")
                    .font(.title)
                    .fontWeight(.bold)
                Spacer()

                UsernameView(username: $username)
                PasswordView(password: $password)
                Button(action:
                        {
                    if !(username == "") && !(password == "") {
                        storedUsername = username
                        storedPassword = password
                        isPresented = true
                    }
                }
                ) {
                    registerButtonContent()
                }.alert("Registered", isPresented: $isPresented, actions: {
                    // actions
                }, message: {
                    Text("Your account has been registered.")
                })

                Spacer()
                    .navigationBarTitleDisplayMode(.inline)
                    .navigationTitle("Sign Up")
            }.padding()

        }
    
}

struct registerButtonContent: View {
    var body: some View {
        Text("Register")
            .font(.headline)
            .foregroundColor(.white)
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding()
            .background(Color.orange)
            .cornerRadius(15)
        
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
