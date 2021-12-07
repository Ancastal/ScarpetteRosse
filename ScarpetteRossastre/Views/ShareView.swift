//
//  ShareView.swift
//  ProjectWomen2
//
//  Created by Antonio Castaldo on 29/11/21.
//

import SwiftUI

struct ShareView: View {
    var body: some View {
        VStack {
            HStack{
                Text("Associazione Aurora S.R.L.").bold().padding(.trailing, 90).font(.title)
                Text("Napoli").foregroundColor(.gray).padding()
            }
            Divider()
            Text("INDIRIZZO").fontWeight(.semibold).foregroundColor(.secondary).padding(.leading, -175)
            Text("Via Trento 13\n80034 Marigliano\nItalia").padding(.leading, -175).padding(1)
            Divider()
            Text("NUMERO DI TELEFONO").fontWeight(.semibold).foregroundColor(.secondary).padding(.leading, -175)
            Text("081 841 41 26").padding(.leading, -180).padding(1).foregroundColor(.blue)
            Divider()
        }
    }
}

struct ShareView_Previews: PreviewProvider {
    static var previews: some View {
        ShareView()
    }
}
