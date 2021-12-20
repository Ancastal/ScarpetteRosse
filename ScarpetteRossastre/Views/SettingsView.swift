//
//  ShareView.swift
//  ProjectWomen2
//
//  Created by Antonio Castaldo on 29/11/21.
//

import SwiftUI




struct SettingsView: View {
    @Binding var showGreeting: Bool
    @AppStorage("enableLogging") var enableLogging: Bool = false
    var body: some View {
            GeometryReader { metrics in
                NavigationView {
                List{
                    
                    Section(header: Text("IMPOSTAZIONI").foregroundColor(.gray).fontWeight(.semibold)) {
                        Toggle(isOn: $enableLogging, label: {
                            Image(systemName: "key.fill")
                            Text(" Accesso Protetto")
                        })
                        NavigationLink(destination: IconsSelector()) {
                        Image("Logo").resizable().frame(width: 20, height: 20)
                            Text("Cambia Icona")
                        }
                    }
                    Section(header: Text("INFORMAZIONI").foregroundColor(.gray).fontWeight(.semibold)) {
                    NavigationLink(destination: NumeriDiEmergenzaView())
                    {
                        Image(systemName: "phone.circle.fill").foregroundColor(orange)
                        Text("Numeri di emergenza")
                    }
                    NavigationLink(destination: SostegnoView())
                    {
                        Image(systemName: "person.crop.circle.badge.questionmark.fill").foregroundColor(orange)
                        Text("Riconoscere una violenza")
                    }
                    NavigationLink(destination: DisclaimerView())
                    {
                        Image(systemName: "info.circle.fill").foregroundColor(orange)
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

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView(showGreeting: .constant(true))
    }
}
