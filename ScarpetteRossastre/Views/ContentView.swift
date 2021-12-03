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
                                .navigationBarHidden(true),
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

                    Text(quiz[x])
                        .fontWeight(.light)
                        .multilineTextAlignment(TextAlignment.center)
                        .font(.system(size: 20))
                        .padding(10.0)
                        .offset(x:0,y:-20)
                    
                    VStack(spacing: 30){
                        ZStack{
                            RoundedRectangle(cornerRadius: 20)
                                .overlay(RoundedRectangle(cornerRadius: 20).strokeBorder(.black, lineWidth: 0.5))
                                .foregroundColor(didTap1 ? myColor : .white)
                                .frame(width: metrics.size.width * 0.9,
                                       height: metrics.size.height * 0.1)
                                .offset(x:0, y: metrics.size.height * 0.22)
                                .onTapGesture {
                                    self.didTap1 = true
                                    if (x < 19) {
                                    x += 1
                                    } else {
                                        willMoveToNextScreen = true
                                    }
                                    self.didTap1 = false
                                }
                            
                            Text("Frequentemente")
                                .font(.title2)
                                .fontWeight(.light)
                                .offset(x:0, y: metrics.size.height * 0.22)
                            
                            
                        }
                    }
                    ZStack{
                        
                        RoundedRectangle(cornerRadius: 20)
                            .overlay(RoundedRectangle(cornerRadius: 20).strokeBorder(.black, lineWidth: 0.5))
                            .foregroundColor(didTap2 ? myColor : .white)
                            .frame(width: metrics.size.width * 0.9,
                                   height: metrics.size.height * 0.1)
                            .offset(x:0, y: metrics.size.height * 0.22)
                            .onTapGesture {
                                self.didTap2 = true
                                if (x < 19) {
                                x += 1
                                } else {
                                    willMoveToNextScreen = true
                                }
                                self.didTap2 = false
                            }
                        
                    }
                    
                    Text("A volte")
                        .font(.title2)
                        .fontWeight(.light)
                        .offset(x:0, y: metrics.size.height * 0.12)
                    
                }
                
                ZStack{
                    RoundedRectangle(cornerRadius: 20)
                        .overlay(RoundedRectangle(cornerRadius: 20).strokeBorder(.black, lineWidth: 0.5))
                        .foregroundColor(didTap3 ? myColor : .white)
                        .frame(width: metrics.size.width * 0.9,
                               height: metrics.size.height * 0.1)
                        .offset(x:0, y: metrics.size.height * 0.24)
                        .onTapGesture {
                            self.didTap3 = true
                            if (x < 19) {
                            x += 1
                            } else {
                                willMoveToNextScreen = true
                            }
                            self.didTap3 = false
                        }
                    Text("No")
                        .font(.title2)
                        .fontWeight(.light)
                        .multilineTextAlignment(.center)
                        .padding(.all, 40.0)
                        .frame(width: 300.0)
                        .overlay(RoundedRectangle(cornerRadius: 40)
                                    .strokeBorder(.black, lineWidth: 0.5))
//                        .offset(y: -150)
                        .position(x: metrics.size.width * 0.5, y: metrics.size.height * 0.05)
                    
//                    VStack(spacing: 0) {
                    Button(action: {
                        
                        if (x < 19) == false {
                            willMoveToNextScreen = true
                        } else {
                            x += 1
                            score += 1
                        }
                        
                    }) {
                        Text("Si")
                            .frame(width: metrics.size.width, height: 70)
                            .overlay(
                                Rectangle()
                                    .strokeBorder(.black, lineWidth: 0.25)
                                    .frame(width: .infinity)
                            )
                        
                    }
                    Button(action: {
                        if (x < 19) == false {
                            willMoveToNextScreen = true
                        } else {
                            x += 1
                            
                        }
                        
                    }) {
                        Text("No")
                            .frame(width: metrics.size.width, height: 70)
                            .overlay(
                                Rectangle()
                                    .strokeBorder(.black, lineWidth: 0.25)
                                    .frame(width: .infinity)
                            )
                    }
                    Button(action: {
                        
                        if (x < 19) == false {
                            willMoveToNextScreen = true
                        } else {
                            x += 1
                            score += 0.5
                        }
                        
                    }) {
                        Text("Forse")
                            .frame(width: metrics.size.width, height: 70)
                            .overlay(
                                Rectangle()
                                    .strokeBorder(.black, lineWidth: 0.25)
                                    .frame(width: .infinity)
                            )
                    }
                    }
                    
//                    Text("Count: \(x)" + "-20\nScore: \(score)")
                        
                }
            }
            .navigate(to: MapView(), when: $willMoveToNextScreen)
        }
        
//    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
