//
//  TView.swift
//  ProjectWomen2
//
//  Created by Antonio Castaldo on 29/11/21.
//

import SwiftUI

struct TView: View {
    var body: some View {
        
        TabView() {
            QuizHome(score: 0.0).tabItem { Label("Questionario", systemImage: "q.circle.fill") }
            MapView().tabItem { Label("Map", systemImage: "map.fill") }
            ShareView().tabItem { Label("Info", systemImage: "info.circle.fill") }
        }.tabViewStyle(DefaultTabViewStyle())
            .accentColor(orange)
        
    }
}

struct TView_Previews: PreviewProvider {
    static var previews: some View {
        TView()
    }
}
