//
//  ContentView.swift
//  ProjectWomen2
//
//  Created by Antonio Castaldo on 30/11/21.
//

import SwiftUI

extension View {
    /// Navigate to a new view.
    /// - Parameters:
    ///   - view: View to navigate to.
    ///   - binding: Only navigates when this condition is `true`.
    func navigate<NewView: View>(to view: NewView, when binding: Binding<Bool>) -> some View {
        NavigationView {
            ZStack {
                self.navigationBarTitle("")
                    .navigationBarHidden(true)
                NavigationLink(destination: view
                                .navigationBarTitle("")
                                .navigationBarHidden(true).navigationBarBackButtonHidden(true),
                               isActive: binding
                ) {
                    EmptyView()
                }
            }
        }
        .navigationViewStyle(.stack)
    }
}

struct ContentView: View {
    @State private var percentAnimated: CGFloat = .zero
    @State private var score:Double = 0.0
    @State private var willMoveToNextScreen = false
    @State private var x: Int = 0
    @State private var didTap1:Bool = false
    @State private var didTap2:Bool = false
    @State private var didTap3:Bool = false
    
    
    var body: some View {
        
        GeometryReader { metrics in
            
            NavigationView {
                VStack {
                    ZStack {
                        Rectangle()
                            .fill(LinearGradient(gradient: Gradient(colors: [purplegrad, bluegrad]), startPoint: .topLeading, endPoint: .bottomTrailing))
                            .offset(y: -260)
                            .frame(height:
                                    metrics.size.height * 0.50).overlay(
                                        RoundedRectangle(cornerRadius: 20).overlay(RoundedRectangle(cornerRadius: 20).strokeBorder(.black, lineWidth: 0.5))
                                            .foregroundColor(.white)
                                            .frame(width: metrics.size.width * 0.8,
                                                   height: metrics.size.height * 0.3)
                                            .offset(x:0, y:-100)
                                            .shadow(radius:15)
                                        
                                    )
                        
                        Text(quiz[x])
                            .font(.title2)
                            .fontWeight(.thin)
                            .multilineTextAlignment(.center)
                            .foregroundColor(.black)
                            .padding(.horizontal, 70.0)
                            .offset(y: -90)
                        
                        
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
                        Text("Si, l'ho vissuto.")
                            .fontWeight(.thin)
                            .frame(width: metrics.size.width, height: 70)
                        
                            .foregroundColor(didTap1 ? Color.white : Color.blue)
                            .font(.title)
                        
                            .background(didTap1 ? Color.blue : Color.white)
                            .overlay(
                                RoundedRectangle(cornerRadius: 40)
                                    .strokeBorder(.blue, lineWidth: 1)
                                    .frame(width: 300)
                            )
                            .foregroundColor(.white)
                            .padding(5)
                        
                        
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
                        Text("Non l'ho vissuto.")
                            .fontWeight(.thin)

                            .frame(width: metrics.size.width, height: 70)
                            .font(.title)
                            .foregroundColor(didTap2 ? Color.white : Color.blue)
                            .background(didTap2 ? Color.blue : Color.white)
                            .overlay(
                                RoundedRectangle(cornerRadius: 40)
                                    .strokeBorder(.blue, lineWidth: 1)
                                    .frame(width: 300)
                                
                                
                            )
                            .foregroundColor(.white)
                            .padding(5)
                        
                        
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
                        Text("Forse l'ho vissuta.")
                            .fontWeight(.thin)

                            .frame(width: 500, height: 70)
                            .foregroundColor(didTap3 ? Color.white : Color.blue)
                            .font(.title)
                            .background(didTap3 ? Color.blue : Color.white)
                            .overlay(
                                RoundedRectangle(cornerRadius: 40)
                                    .strokeBorder(.blue, lineWidth: 1)
                                    .frame(width: 300)
                                
                            )
                            .foregroundColor(.white)
                            .padding(.bottom, 100)
                        
                    }
                }
                //                    Text("Count: \(x)" + "-20\nScore: \(score)")
                
            }
        }
        .navigate(to: MapView(), when: $willMoveToNextScreen)
        .navigationTitle("Ciao")
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
