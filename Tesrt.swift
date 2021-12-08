//
//  Tesrt.swift
//  ScarpetteRossastre
//
//  Created by Antonio Castaldo on 08/12/21.
//

import SwiftUI

struct Tesrt: View {
    @State private var showView = "QuizHome"
    @State private var percentAnimated: CGFloat = .zero
    @State private var score:Double = 0.0
    @State private var willMoveToNextScreen = false
    @State private var x: Int = 0
    @State private var didTap1:Bool = false
    @State private var didTap2:Bool = false
    @State private var didTap3:Bool = false
    var body: some View {
        
               switch showView
               {
               case "QuizHome":
                       VStack {
                           Text("Sei al sicuro?")
                               .font(.largeTitle).bold().padding()
                               .frame(width: 370, alignment: .topLeading)
                           Text("Riconoscere l’essenza di una relazione affettiva non è sempre facile. Questo questionario, totalmente anonimo, ha lo scopo di aiutare a riflettere sulle dinamiche vissute all’interno della coppia, per individuare comportamenti vessatori.  \nLeggi attentamente le domande, rifletti e rispondi con sincerità. Alla fine del test risulterà un profilo di rischio sulla base della tua situazione").padding(.horizontal, 30)
                               .font(.body)
                               .lineSpacing(10)
                               .foregroundColor(.primary)
                           Spacer()
                           Button(action: {
                               showView = "Quiz"
                           }) {
                               Text("Prova il test")
                                   .fontWeight(.semibold)
                                   .font(.title3)
                                   .frame(minWidth: 0, maxWidth: 300)
                                   .padding(8)
                                   .foregroundColor(.white)
                                   .background(orange)
                                   .cornerRadius(40)
                           }

                           
                           Spacer()
                       }
                       
                   
//                   Button("Quiz")
//                   {
//                       showView = "Quiz"
//                   }
               case "Quiz":
                   GeometryReader { metrics in
                       

                           VStack {
                               
           //                    Image(systemName: "gearshape.fill").title()
                               ZStack {
                                   Rectangle()
                                       .fill(LinearGradient(gradient: Gradient(colors: [orange, red]), startPoint: .topLeading, endPoint: .bottomTrailing))
                                       .offset(y: -220)
                                       .frame(height:
                                               metrics.size.height * 0.50).overlay(
                                                   RoundedRectangle(cornerRadius: 20).overlay(RoundedRectangle(cornerRadius: 20).strokeBorder(.black, lineWidth: 0.5))
                                                       .foregroundColor(.white)
                                                       .frame(width: metrics.size.width * 0.8,
                                                              height: metrics.size.height * 0.35)
                                                       .offset(x:0, y:-50)
                                                       .shadow(radius:15)
                                                   
                                               )
                                   
                                   Text(quiz[x])
                                       .font(.title2)
                                       .fontWeight(.thin)
                                       .multilineTextAlignment(.center)
                                       .foregroundColor(.black)
                                       .padding(.horizontal, 70.0)
                                       .offset(y: -50)
                                   
                                   
                               }
                               
                               
                               //                    VStack(spacing: 0) {
                               Button(action: {
                                   didTap1 = true
                                   DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                                       didTap1 = false
                                   }
                                   if (x < 19) == false {
                                       willMoveToNextScreen = true
                                   } else {
                                       x += 1
                                       score += 1
                                   }
                                   
                               }) {
                                   Text("Si, l'ho vissuto")
                                       .fontWeight(.light)
                                       .frame(minWidth: 0, maxWidth: 300, minHeight: 50)
                                       .foregroundColor(didTap1 ? Color.white : Color.white)
                                       .font(.title3)
                                       .background(didTap1 ? Color.blue : Color.orange)
                                       .cornerRadius(40)
                                       .overlay(RoundedRectangle(cornerRadius:40).strokeBorder(.black, lineWidth: 0.5))
                                       .padding(10)
                                       .offset(y: 10)
                                   
                                   
                                   
                               }
                               Button(action: {
                                   didTap2 = true
                                   DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                                       didTap2 = false
                                   }
                                   if (x < 19) == false {
                                       willMoveToNextScreen = true
                                   } else {
                                       x += 1
                                       score += 1
                                   }
                                   
                               }) {
                                   Text("Non l'ho vissuto")
                                       .fontWeight(.light)
                                       .frame(minWidth: 0, maxWidth: 300, minHeight: 50)
                                       .foregroundColor(didTap2 ? Color.white : Color.white)
                                       .font(.title3)
                                       .background(didTap2 ? Color.blue : Color.orange)
                                       .cornerRadius(40)
                                       .overlay(RoundedRectangle(cornerRadius:40).strokeBorder(.black, lineWidth: 0.5))
                                       .padding(10)
                                       .offset(y: 10)
                                   
                                   
                               }
                               Button(action: {
                                   didTap3 = true
                                   DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                                       didTap3 = false
                                   }
                                   if (x < 19) == false {
                                       willMoveToNextScreen = true
                                   } else {
                                       x += 1
                                       score += 1
                                   }
                                   
                               }) {
                                   Text("Forse l'ho vissuto")
                                       .fontWeight(.light)
                                       .frame(minWidth: 0, maxWidth: 300, minHeight: 50)
                                       .foregroundColor(didTap3 ? Color.white : Color.white)
                                       .font(.title3)
                                       .background(didTap3 ? Color.blue : Color.orange)
                                       .cornerRadius(40)
                                       .overlay(RoundedRectangle(cornerRadius:40).strokeBorder(.black, lineWidth: 0.5))
                                       .padding(10)
                                       .offset(y: 10)
                                       .padding(.bottom, 50)
                                   
                               }
                               Spacer()
                               Spacer()
                           }.transition(.move(edge: .trailing))
                           //                    Text("Count: \(x)" + "-20\nScore: \(score)")
                           
                       }.transition(.move(edge: .trailing))
//
//                   .navigate(to: MapView(), when: $willMoveToNextScreen)
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


struct Tesrt_Previews: PreviewProvider {
    static var previews: some View {
        Tesrt()
    }
}
