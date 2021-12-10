//
//  QuizHome.swift
//  ScarpetteRossastre
//
//  Created by Antonio Castaldo on 06/12/21.
//

import SwiftUI

struct QuizHome: View {
    @State var score: Double
    @State private var showView = "LoginView"
    var body: some View {
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
                NavigationLink(destination: ContentView(score: score)) {
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
            
        }.accentColor(.white)
    }
}
    
    struct QuizHome_Previews: PreviewProvider {
        static var previews: some View {
            QuizHome(score: 0.0)
        }
    }
