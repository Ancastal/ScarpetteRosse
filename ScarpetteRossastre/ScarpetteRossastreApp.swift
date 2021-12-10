//
//  ScarpetteRossastreApp.swift
//  ScarpetteRossastre
//
//  Created by Antonio Castaldo on 03/12/21.
//

import SwiftUI

@main
struct ScarpeRosseApp: App {
    @State var showOnBoarding: Bool = true
    var body: some Scene {
        WindowGroup {
            ZStack {
                TView()
                if showOnBoarding {
                    OnBoardingContentView(showOnBoarding: $showOnBoarding)
                        .background(Color.white)
                }
            }
        }
    }
}
