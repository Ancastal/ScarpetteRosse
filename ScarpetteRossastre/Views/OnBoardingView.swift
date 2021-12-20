//
//  OnBoardingView.swift
//  ProjectWomen2
//
//  Created by Antonio Castaldo on 27/11/21.
//

import SwiftUI

struct PageViewData: Identifiable {
    let id = UUID().uuidString
    let imageNamed: String
}

struct PageView: View {
    let viewData: PageViewData
    var body: some View {
        Image(viewData.imageNamed)
            .resizable()
            .clipped()
    }
}

struct CircleButton: View {
    @Binding var isSelected: Bool
    let action: () -> Void
    
    var body: some View {
        Button(action: {
            self.action()
        }) { Circle()
                .frame(width: 16, height: 16)
                .foregroundColor(self.isSelected ? Color.white : Color.white.opacity(0.5))
        }
    }
}


struct OnBoardingContentView: View {
    @Binding var showOnBoarding: Bool
    @Binding var enableLogging: Bool
    @State private var willMove = false
    @State var isLoggedIn: Bool = false
    @AppStorage("username") var storedUsername: String = ""
    @AppStorage("password") var storedPassword: String = ""
    
    var body: some View {
        
        if enableLogging {
            if !isLoggedIn {
                NavigationView {
                    LoginView(enableLogging: $enableLogging, isLoggedIn: $isLoggedIn)
                    
                        .navigationBarHidden(true)
                            .navigationBarBackButtonHidden(true)
    //                    .navigationTitle("Login to your account")
                    
                }
                
            } 
        } else {
            TabView {
                onBoardView(systemImageName: "simple",
                            title: "Sostegno",
                            description: "In ogni momento, cerca contatti utili alla tua situazione in un’interfaccia semplice e veloce.\n\nScegli tra una lista o una mappa interattiva che si aggiorna con la tua posizione.", on: false, showOnBoarding: $showOnBoarding)
                
                onBoardView(systemImageName: "safe",
                            title: "Sicurezza",
                            description: "La nostra app è totalmente anonima e nessun dato sarà registrato o mantenuto.\n\nPuoi navigare nell'app in totale tranquillità.", on: false, showOnBoarding: $showOnBoarding)
                
                onBoardView(systemImageName: "support",
                            title: "Semplicità",
                            description: "Datti un minuto per pensare alla tua relazione. Potrai riceverai un consiglio ideato da esperti in base alla tua situazione.\n\nEsplora le organizzazioni circostanti e trova contatti utili per ricevere aiuto.", on: true, showOnBoarding: $showOnBoarding)
                
            }
            
            .edgesIgnoringSafeArea([.top, .bottom])
            //                .tabViewStyle(.page(indexDisplayMode: .always))        .indexViewStyle(.page(backgroundDisplayMode: .always))
            .tabViewStyle(.page)
            .indexViewStyle(.page(backgroundDisplayMode: .always))
            
        }
    }
}


//        .navigationTitle("")

struct LoginView: View {
    
    func authenticate() {
        if (username == storedUsername) && (password == storedPassword) {
            if !(username == "" && password == "") {
            loginTitle = "Logged In"
            loginAlert = "You have logged in with success."
            isPresented = true
            isLoggedIn = true
            }
        } else {
            loginTitle = "Login Failed"
            loginAlert = "Login has failed"
            isPresented = true

        }
    }
    @Binding var enableLogging: Bool
    @Binding var isLoggedIn: Bool
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

            WelcomeText().padding()
            Spacer()
            UsernameView(username: $username)
            PasswordView(password: $password)
            Button(action:
                    {
                authenticate()
            }
            ) {
                loginButtonContent()
            }
            NavigationLink(destination: RegistrationView())
            {
                SignInContent()
            
            }
            Spacer()
            Text(String(enableLogging))

            
            Button("Forgot password") {
                Text("Register Content")
            }
            
        }.padding()
            .alert(loginTitle, isPresented: $isPresented, actions: {
                // actions
            }, message: {
                Text(loginAlert)
            })
        
    }
}

struct WelcomeText: View {
    var body: some View {
        Text("Login to your account")
            .font(.title)
            .fontWeight(.bold)
    }
}

struct UsernameView: View {
    @Binding var username: String
    let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)
    var body: some View {
        TextField("Username", text: $username)
            .padding(10)
            .background(lightGreyColor)
            .cornerRadius(10)
            .padding(.bottom, 20)
            
    }
}

struct PasswordView: View {
    let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)
    @Binding var password: String
    var body: some View {
        SecureField("Password", text: $password)
            .padding(10)
            .background(lightGreyColor)
            .cornerRadius(10)
            .padding(.bottom, 30)
    }
        
}

struct loginButtonContent: View {
    var body: some View {
        Text("Sign In")
            .font(.headline)
            .foregroundColor(.white)
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding()
            .background(Color.orange)
            .cornerRadius(15)
        
    }
}

struct SignInContent: View {
    var body: some View {
        HStack {
        Text("Don't have an account?")
            Text("Sign Up Now").bold()
        }.padding().foregroundColor(.blue)
    }
}

struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingContentView(showOnBoarding: .constant(true), enableLogging: .constant(true))
            .preferredColorScheme(.light)
    }
}
