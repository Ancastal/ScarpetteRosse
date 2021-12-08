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
    
    @State private var willMove = false
    
    var body: some View {
        NavigationView {
//            ScrollView(.horizontal) {
                
                            TabView {
                onBoardView(systemImageName: "simple",
                            title: "Sostegno",
                            description: "In ogni momento, cerca contatti utili alla tua situazione in un’interfaccia semplice e veloce.\n\nScegli tra una lista o una mappa interattiva che si aggiorna con la tua posizione.", on: false)
                
                onBoardView(systemImageName: "safe",
                            title: "Sicurezza",
                            description: "La nostra app è totalmente anonima e nessun dato sarà registrato o mantenuto.\n\nL’accesso tramite password ti garantisce che solo tu potrai accedervi.", on: false)
                
                onBoardView(systemImageName: "support",
                            title: "Semplicità",
                            description: "Datti un minuto per pensare alla tua relazione. Potrai riceverai un consiglio ideato da esperti in base alla tua situazione.\n\nEsplora le organizzazioni circostanti e condividi le tue esperienze in anonimo con altri utenti.", on: true)
                //            Button(action: NavigationLink) {
                //                /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
                //            }
                
            }

            .navigationBarHidden(true)
        }
                .edgesIgnoringSafeArea([.top, .bottom])
//                .tabViewStyle(.page(indexDisplayMode: .always))        .indexViewStyle(.page(backgroundDisplayMode: .always))
                .tabViewStyle(.page)
                .indexViewStyle(.page(backgroundDisplayMode: .always))

        //
    }
}



struct onBoardView: View {
    @State private var willMove = false
    let systemImageName: String
    let title: String
    let description: String
    @State var on: Bool
    
    var body: some View {
        VStack(alignment: .center, spacing: 20) {
            
            Group{
                
                Image(systemImageName).resizable()
                    .frame(width: 300.0, height: 200.0)
                
                Text(title)
                    .font(.title).bold()
                    .padding()
                
                Text(description)
                    .font(.title3)
                    .foregroundColor(.secondary)
                    .padding(.horizontal, 30.0)
                
                
            }
            if (on == true) {
                NavigationLink(destination: TView()
                ) {
                    Group {
                        Text("Continua")
                        .fontWeight(.semibold)
                        .font(.title3)
                        .frame(minWidth: 0, maxWidth: 120, minHeight: 40)

                        .foregroundColor(.white)
                        .background(red)
                        .cornerRadius(40)
                    }
                    .padding(.bottom, -30)
                }
        }
        }
        
    }
    
    
}



//        .navigationTitle("")


struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingContentView()
            .preferredColorScheme(.light)
    }
}
