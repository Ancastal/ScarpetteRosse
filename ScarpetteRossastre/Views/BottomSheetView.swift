//
////
////  BottomSheet2.swift
////  ScarpetteRossastre
////
////  Created by Antonio Castaldo on 07/12/21.
////
//
//import SwiftUI
//import BottomSheet
//
////The custom BottomSheetPosition enum.
//enum BottomSheetPosition: CGFloat, CaseIterable {
//    case middle = 0.4, bottom = 0.125, hidden = 0
//}
//
//enum BottomSheetHidden: CGFloat, CaseIterable {
//    case middle = 0.4, bottom = 0.125, hidden = 0
//}
//    
//
//struct BottomSheetView: View {
//    
//    @State private var bottomSheetPosition: BottomSheetPosition = .middle
//    @State private var bottomSheetHidden: BottomSheetHidden = .middle
//    
//    let backgroundColors: [Color] = [Color(red: 0.2, green: 0.85, blue: 0.7), Color(red: 0.13, green: 0.55, blue: 0.45)]
//    let readMoreColors: [Color] = [Color(red: 0.70, green: 0.22, blue: 0.22), Color(red: 1, green: 0.32, blue: 0.32)]
//    let bookmarkColors: [Color] = [Color(red: 0.28, green: 0.28, blue: 0.53), Color(red: 0.44, green: 0.44, blue: 0.83)]
//    
//    var body: some View {
//        
//        //A green gradient as a background that ignores the safe area.
//        LinearGradient(gradient: Gradient(colors: self.backgroundColors), startPoint: .topLeading, endPoint: .bottomTrailing)
//            .edgesIgnoringSafeArea(.all)
//            
//            .bottomSheet(bottomSheetPosition: self.$bottomSheetHidden, options: [.allowContentDrag, .showCloseButton(), .swipeToDismiss, .tapToDissmiss, .appleScrollBehavior], headerContent: {
//                //The name of the book as the heading and the author as the subtitle with a divider.
//                Text("Heading")
//            }) {
//                Text("Content")
//            }
//    }
//}
//
////The gradient ButtonStyle.
//struct BottomButton: ButtonStyle {
//    
//    let colors: [Color]
//    
//    func makeBody(configuration: Configuration) -> some View {
//        configuration.label
//            .font(.headline)
//            .foregroundColor(.white)
//            .padding()
//            .background(LinearGradient(gradient: Gradient(colors: self.colors), startPoint: .topLeading, endPoint: .bottomTrailing))
//    }
//}
//
//struct BottomSheetView_Previews: PreviewProvider {
//    static var previews: some View {
//        BottomSheetView()
//    }
//}
