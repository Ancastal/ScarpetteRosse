//
//  DisclaimerView.swift
//  ScarpetteRossastre
//
//  Created by Antonio Castaldo on 09/12/21.
//

import SwiftUI

struct DisclaimerView: View {
    var body: some View {
        VStack {
        
            Text("Il test utilizzato all'interno della app ScarpeRosse è stato fornito da Reama Network - Rete per l'Empowerment e l'Auto Mutuo Aiuto (Sportello Antiviolenza Online).\n\nScarpeRosse è stata sviluppata all'interno del corso Apple iOS Foundation Program, IX ed. da Castaldo A., De Rosis M., Dralova E., Tranchese T.").padding()
            
        }
        Spacer()
        .navigationTitle("Disclaimer")
    }
}

struct DisclaimerView_Previews: PreviewProvider {
    static var previews: some View {
        DisclaimerView()
    }
}
