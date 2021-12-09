//
//  onBoardTest.swift
//  ScarpetteRossastre
//
//  Created by Antonio Castaldo on 08/12/21.
//

import SwiftUI

struct onBoardTest: View {
    @State private var showView = "onBoard"
        
        var body: some View
        {
            switch showView
            {
            case "onBoard":
                Text("This is onBoardingContentView")
                Button("quizHome")
                {
                    showView = "quizHome"
                }
            case "quizHome":
                NavigationView {
                    NavigationLink(destination: TView()) {
                        Text("This is QuizHome View")
                        Text("Go to Quiz")
                    }
                }
            case "NextView":
                Text("This is the NextView")
                Button("Back")
                {
                    showView = "NormalView"
                }
            default:
                Text("Default") // you should never reach this
            }
        }
}

struct onBoardTest_Previews: PreviewProvider {
    static var previews: some View {
        onBoardTest()
    }
}
