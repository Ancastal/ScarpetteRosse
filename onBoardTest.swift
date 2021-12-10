//
//  onBoardTest.swift
//  ScarpetteRossastre
//
//  Created by Antonio Castaldo on 08/12/21.
//

import SwiftUI

struct onBoardView: View {
    @State private var willMove = false
    let systemImageName: String
    let title: String
    let description: String
    @State var on: Bool
    @Binding var showOnBoarding: Bool
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
                Button(action: {
                    showOnBoarding = false
                }
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

struct onBoardTest: View {
    @State private var showView = "onBoard"
    @Binding var showOnBoarding: Bool
        var body: some View
        {
            switch showView
            {
            case "onBoard":
                NavigationView {
                                    TabView {
                        onBoardView(systemImageName: "simple",
                                    title: "Sostegno",
                                    description: "In ogni momento, cerca contatti utili alla tua situazione in un’interfaccia semplice e veloce.\n\nScegli tra una lista o una mappa interattiva che si aggiorna con la tua posizione.", on: false, showOnBoarding: $showOnBoarding)
                        
                        onBoardView(systemImageName: "safe",
                                    title: "Sicurezza",
                                    description: "La nostra app è totalmente anonima e nessun dato sarà registrato o mantenuto.\n\nL’accesso tramite password ti garantisce che solo tu potrai accedervi.", on: false, showOnBoarding: $showOnBoarding)
                        
                        onBoardView(systemImageName: "support",
                                    title: "Semplicità",
                                    description: "Datti un minuto per pensare alla tua relazione. Potrai riceverai un consiglio ideato da esperti in base alla tua situazione.\n\nEsplora le organizzazioni circostanti e condividi le tue esperienze in anonimo con altri utenti.", on: true, showOnBoarding: $showOnBoarding)
                        
                    }

                    .navigationBarHidden(true)
                }.edgesIgnoringSafeArea([.top, .bottom])
                        .tabViewStyle(.page)
                        .indexViewStyle(.page(backgroundDisplayMode: .always))
            case "quizHome":
                NavigationView {
                    VStack {
                        Text("Sei al sicuro?")
                            .font(.largeTitle).bold().padding()
                            .frame(width: 370, alignment: .topLeading)
                        Text("Riconoscere l’essenza di una relazione affettiva non è sempre facile. Questo questionario, totalmente anonimo, ha lo scopo di aiutare a riflettere sulle dinamiche vissute all’interno della coppia, per individuare comportamenti vessatori.  \nLeggi attentamente le domande, rifletti e rispondi con sincerità. Alla fine del test risulterà un profilo di rischio sulla base della tua situazione").padding(.horizontal, 30)
                            .font(.body)
                            .lineSpacing(10)
                            .foregroundColor(.primary)
                        Spacer()
                        Button (action: {
                            showOnBoarding = false
                        }
                        ) {
                            Text("Prova il test")
                                .fontWeight(.semibold)
                                .font(.title3)
                                .frame(minWidth: 0, maxWidth: 300)
                                .padding(8)
                                .foregroundColor(.white)
                                .background(orange)
                                .cornerRadius(40)
                        }
                        
                        Spacer()
                    }
                    
                }
            case "NextView":
                Text("This is the NextView")
                Button("Back")
                {
                    showView = "NormalView"
                }
            default:
                Text("Default") // you should never reach this
            }
        }
}

struct onBoardTest_Previews: PreviewProvider {
    static var previews: some View {
        onBoardTest(showOnBoarding: .constant(true))
    }
}
