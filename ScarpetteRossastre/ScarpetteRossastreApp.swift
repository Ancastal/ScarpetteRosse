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
                        .onAppear(perform: UIApplication.shared.addTapGestureRecognizer)

                }
            }
        }
    }
}

extension UIApplication {
    func addTapGestureRecognizer() {
        guard let window = windows.first else { return }
        let tapGesture = UITapGestureRecognizer(target: window, action: #selector(UIView.endEditing))
        tapGesture.requiresExclusiveTouchType = false
        tapGesture.cancelsTouchesInView = false
        tapGesture.delegate = self
        window.addGestureRecognizer(tapGesture)
    }
}

extension UIApplication: UIGestureRecognizerDelegate {
    public func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWith otherGestureRecognizer: UIGestureRecognizer) -> Bool {
        return true // set to `false` if you don't want to detect tap during other gestures
    }
}
