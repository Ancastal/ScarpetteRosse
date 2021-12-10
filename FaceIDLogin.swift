//
//  ContentView.swift
//  PinLogin
//
//  Created by Antonio Castaldo on 10/12/21.
//
// Aggiungere Privacy a Info.plist

import SwiftUI
import LocalAuthentication

struct FaceIDLogin: View {
    @State private var isUnlocked = false
    func authenticate() {
        let context = LAContext()
        var error: NSError?

        // check whether biometric authentication is possible
        if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error) {
            // it's possible, so go ahead and use it
            let reason = "We need to unlock your data."

            context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: reason) { success, authenticationError in
                // authentication has now completed
                if success {
                    isUnlocked = true
                } else {
                    // there was a problem
                }
            }
        } else {
            // no biometrics
        }
    }
    var body: some View {
        VStack {
            if isUnlocked {
                Text("Unlocked")
            } else {
                Text("Locked")
            }
        }
        .onAppear(perform: authenticate)
        }

    }



struct FaceIDLoginPreview: PreviewProvider {
    static var previews: some View {
        FaceIDLogin()
    }
}
