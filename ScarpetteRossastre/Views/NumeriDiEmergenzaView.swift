//
//  NumeriDiEmergenzaView.swift
//  ScarpetteRossastre
//
//  Created by Antonio Castaldo on 09/12/21.
//

import SwiftUI

struct NumeriDiEmergenzaView: View {
    var body: some View {
        VStack {
            Group {
                Text("Numeri utili in caso di violenza:").font(.title).bold().padding(.top, 10)
                Divider()
                Text("CARABINIERI").foregroundColor(.gray).fontWeight(.semibold)
                Text("112")
                Divider()
            }.frame(maxWidth: .infinity, alignment: .topLeading).padding(.leading, 10)
            Group {
                Text("POLIZIA DI STATO").foregroundColor(.gray).fontWeight(.semibold)
                Text("113")
                Divider()
                Text("EMERGENZA SANITARIA").foregroundColor(.gray).fontWeight(.semibold)
                Text("118")
                Divider()
                Text("ANTIVIOLENZA DONNE").foregroundColor(.gray).fontWeight(.semibold)
                Text("1522")
                Divider()
            }.frame(maxWidth: .infinity, alignment: .topLeading).padding(.leading, 10)
            Text("Il numero verde di pubblica utilità del Dipartimento per le Pari Opportunità per l’emersione e il contrasto della violenza intra ed extra familiare a danno delle donne.\n\nÈ attivo 24 ore su 24 per tutti i giorni dell’anno ed accessibile dall’intero territorio nazionale gratuitamente, sia da rete fissa che mobile, con un’accoglienza disponibile nelle lingue italiano, inglese, francese, spagnolo e arabo.").padding(.top, 20).padding(.horizontal, 20)
            Spacer()
        }
        
    }
}

struct NumeriDiEmergenzaView_Previews: PreviewProvider {
    static var previews: some View {
        NumeriDiEmergenzaView()
    }
}
