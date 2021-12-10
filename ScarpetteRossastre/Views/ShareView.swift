//
//  ShareView.swift
//  ProjectWomen2
//
//  Created by Antonio Castaldo on 29/11/21.
//

import SwiftUI




struct ShareView: View {
    
    
    var body: some View {

            GeometryReader { metrics in
                NavigationView {
                List{
                    Section(header: Text("INFORMAZIONI").foregroundColor(.gray).fontWeight(.semibold)) {
                    NavigationLink(destination: NumeriDiEmergenzaView())
                    {
                        Text("Numeri di emergenza")
                    }
                    NavigationLink(destination: SostegnoView())
                    {
                        Text("Riconoscere una violenza")
                    }
                    NavigationLink(destination: DisclaimerView())
                    {
                        Text("Disclaimer")
                    }
                    }
                }.foregroundColor(.black)
                    
                    .navigationBarBackButtonHidden(true)
                    .navigationBarHidden(true)
                Spacer()
                        
                }
            }
            

    }
}

struct ShareView_Previews: PreviewProvider {
    static var previews: some View {
        ShareView()
    }
}
