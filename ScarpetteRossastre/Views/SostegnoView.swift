//
//  SostegnoView.swift
//  ScarpetteRossastre
//
//  Created by Antonio Castaldo on 09/12/21.
//

import SwiftUI

struct SostegnoView: View {
    var body: some View {
        VStack (alignment: .leading){
            ScrollView {
                Text("Sono a rischio di violenza?").font(.title).bold().padding(.bottom, 10).offset(x: -15)
                
            Text("Ripensa alla tua attuale o passata relazione amorosa e rispondi alle domande qui sotto.").font(.title3).padding(.bottom, 10).padding(.horizontal, 6)
            
            Group {
        Text("Vuole sempre sapere cosa stai facendo, dove ti trovi e con chi stai?")
        Text("Controlla il tuo telefono o accede al tuo account di facebook, twitter?")
        Text("Ti impedisce di lavorare e/o studiare, o di coltivare qualche hobby?")
        Text("Controlla se e come spendi i tuoi soldi, o pretende di gestirli?")
        Text("Ti insulta, critica sempre i tuoi comportamenti o scredita tutto ciò che fai?")
        Text("È violento fisicamente? Ti ha mai colpito, preso a schiaffi, calci e/o pugni?")
        Text("Minaccia di fare del male a te e/o alle persone a te care?")
        Text("Se hai risposto “si” alla maggior parte delle domande, ti consigliamo di consultare la nostra sezione Mappe e rivolgerti al centro antiviolenza più vicino.")
            }.frame(width: 360, alignment: .leading)
                    .padding(.vertical, 5).padding(.horizontal, 12)
            Spacer()
        }
        }
    }
}

struct SostegnoView_Previews: PreviewProvider {
    static var previews: some View {
        SostegnoView()
    }
}
