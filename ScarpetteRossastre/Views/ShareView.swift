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
                Spacer()
                List{
                    
                    NavigationLink(destination: NumeriDiEmergenzaView())
                    {
                        Text("Numeri di emergenza")
                    }
                    NavigationLink(destination: SostegnoView())
                    {
                        Text("Sostegno")
                    }
                    NavigationLink(destination: DisclaimerView())
                    {
                        Text("Disclaimer")
                    }
                
                }.foregroundColor(.black)
                    
                
                
                Spacer()
                        .navigationBarHidden(true)
                }
            }
            

    }
}

struct ShareView_Previews: PreviewProvider {
    static var previews: some View {
        ShareView()
    }
}
