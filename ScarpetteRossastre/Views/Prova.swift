//
//  Prova.swift
//  ScarpetteRossastre
//
//  Created by Antonio Castaldo on 06/12/21.
//

import SwiftUI

struct Prova: View {
    @State private var bottomSheetShown = false

            var body: some View {
                GeometryReader { geometry in
                    Color.green
                    BottomSheetView(
                        isOpen: self.$bottomSheetShown,
                        maxHeight: geometry.size.height * 0.7
                    ) {
                        Color.blue
                    }
                }.edgesIgnoringSafeArea(.all)
            }
    }


struct Prova_Previews: PreviewProvider {
    static var previews: some View {
        Prova()
    }
}
