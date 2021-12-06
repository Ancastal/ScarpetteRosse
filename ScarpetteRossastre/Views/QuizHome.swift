//
//  QuizHome.swift
//  ScarpetteRossastre
//
//  Created by Antonio Castaldo on 06/12/21.
//

import SwiftUI

struct QuizHome: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Sei al sicuro?")
                    .font(.largeTitle).bold().padding()
                    .frame(width: 370, alignment: .topLeading)
                Text("Riconoscere l’essenza di una relazione affettiva non è sempre facile. Questo questionario, totalmente anonimo, ha lo scopo di aiutare a riflettere sulle dinamiche vissute all’interno della coppia, per individuare comportamenti vessatori.  \nLeggi attentamente le domande, rifletti e rispondi con sincerità. Alla fine del test risulterà un profilo di rischio sulla base della tua situazione").padding(.horizontal, 30)
                    .font(.body)
                    .lineSpacing(10)
                    .foregroundColor(.secondary)
                Spacer()
                NavigationLink(destination: ContentView().navigationBarBackButtonHidden(true).navigationBarHidden(true)) {
                    Text("Fai il Test")
                        .fontWeight(.semibold)
                        .foregroundColor(.blue)
                        .font(.title3)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40)
                                .strokeBorder(.blue, lineWidth: 2)
                                .frame(width: 200,height: 50)
                        )
                        .foregroundColor(.white)
                        .padding(5)
                }
                
                Spacer()
                
            }
            .navigationTitle("")
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
        }
    }
}

struct QuizHome_Previews: PreviewProvider {
    static var previews: some View {
        QuizHome()
    }
}
