//
//  TestProgress.swift
//  ScarpetteRossastre
//
//  Created by Antonio Castaldo on 08/12/21.
//

import SwiftUI

struct TestProgress: View {
    @State private var x = 5.0
    var body: some View {
        VStack {
        Button(action: {
            x += 1
        }) {
            Text("Increase by 1")
        }
            
        }
    }
}

struct TestProgress_Previews: PreviewProvider {
    static var previews: some View {
        TestProgress()
    }
}
