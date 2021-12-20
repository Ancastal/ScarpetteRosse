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
    @AppStorage("enableLogging") var enableLogging: Bool = false

    var body: some Scene {
        WindowGroup {
            ZStack {
                TView(showGreeting: true)
                if showOnBoarding {
                    OnBoardingContentView(showOnBoarding: $showOnBoarding, enableLogging: $enableLogging)
                        .background(Color.white)
                }
            }
        }
    }
}
