//
//  IconsSelector.swift
//  ScarpetteRossastre
//
//  Created by Antonio Castaldo on 16/12/21.
//

import SwiftUI

struct IconsSelector: View {
    var body: some View {

            VStack {
                Group {
                HStack {
                    Button(action: {
                        UIApplication.shared.setAlternateIconName(nil)
                    }) {
                        Image("Logo").resizable().frame(width: 50, height: 50).padding().shadow(radius:3)
                    }
                    Button(action: {
                        UIApplication.shared.setAlternateIconName("AppIcon-2")
                    }) {
                        Image("Icon-2").padding().shadow(radius:3)
                    }
                    Button(action: {
                        UIApplication.shared.setAlternateIconName("AppIcon-3")
                    }) {
                        Image("Icon-3").padding().shadow(radius:3)
                    }
                    
                }
                HStack {
                    Button(action: {
                        UIApplication.shared.setAlternateIconName("AppIcon-6")
                    }) {
                        Image("Icon-6").resizable().frame(width: 50, height: 50).padding().shadow(radius:3)
                    }
                    Button(action: {
                        UIApplication.shared.setAlternateIconName("AppIcon-4")
                    }) {
                        Image("Icon-4").resizable().frame(width: 70, height: 70).padding().shadow(radius:3)
                    }
                    Button(action: {
                        UIApplication.shared.setAlternateIconName("AppIcon-5")
                    }) {
                        Image("Icon-5").padding().shadow(radius:3)
                    }
                }
                }.overlay(RoundedRectangle(cornerRadius: 10).strokeBorder(lineWidth: 1)).padding()
            
        }
        .navigationTitle("Seleziona Icona")
    }
    
}

struct IconsSelector_Previews: PreviewProvider {
    static var previews: some View {
        IconsSelector()
    }
}
