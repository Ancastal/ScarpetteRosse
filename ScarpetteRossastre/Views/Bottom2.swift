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
//enum BottomBottomSheetPosition: CGFloat, CaseIterable {
//    case middle = 0.4, bottom = 0.125, hidden = 0
//}
//
//struct Bottom2: View {
//    
//    @State private var bottomSheetPosition: BottomSheetPosition = .middle
//    
//    let backgroundColors: [Color] = [Color(red: 0.2, green: 0.85, blue: 0.7), Color(red: 0.13, green: 0.55, blue: 0.45)]
//    let readMoreColors: [Color] = [Color(red: 0.70, green: 0.22, blue: 0.22), Color(red: 1, green: 0.32, blue: 0.32)]
//    let bookmarkColors: [Color] = [Color(red: 0.28, green: 0.28, blue: 0.53), Color(red: 0.44, green: 0.44, blue: 0.83)]
//    
//    var body: some View {
//        //A green gradient as a background that ignores the safe area.
//        LinearGradient(gradient: Gradient(colors: self.backgroundColors), startPoint: .topLeading, endPoint: .bottomTrailing)
//            .edgesIgnoringSafeArea(.all)
//            
//            .bottomSheet(bottomSheetPosition: self.$bottomSheetPosition, options: [.allowContentDrag, .showCloseButton(), .swipeToDismiss, .tapToDissmiss], headerContent: {
//                //The name of the book as the heading and the author as the subtitle with a divider.
//                VStack(alignment: .leading) {
//                    Text("Wuthering Heights")
//                        .font(.title).bold()
//                    
//                    Text("by Emily Brontë")
//                        .font(.subheadline).foregroundColor(.secondary)
//                    
//                    Divider()
//                        .padding(.trailing, -30)
//                }
//            }) {
//                //A short introduction to the book, with a "Read More" button and a "Bookmark" button.
//                VStack(spacing: 0) {
//                    Text("This tumultuous tale of life in a bleak farmhouse on the Yorkshire moors is a popular set text for GCSE and A-level English study, but away from the demands of the classroom it’s easier to enjoy its drama and intensity. Populated largely by characters whose inability to control their own emotions...")
//                        .fixedSize(horizontal: false, vertical: true)
//                    
//                    HStack {
//                        Button(action: {}, label: {
//                            Text("Read More")
//                                .padding(.horizontal)
//                        })
//                        .buttonStyle(BookoButton(colors: self.readMoreColors)).clipShape(Capsule())
//                        
//                        Spacer()
//                        
//                        Button(action: {}, label: {
//                            Image(systemName: "bookmark")
//                        })
//                        .buttonStyle(BookButton(colors: self.bookmarkColors)).clipShape(Circle())
//                    }
//                    .padding(.top)
//                    
//                    Spacer(minLength: 0)
//                }
//                .padding([.horizontal, .top])
//            }
//    }
//}
//
////The gradient ButtonStyle.
//struct BookoButton: ButtonStyle {
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
//struct BottomSheet2_Previews: PreviewProvider {
//    static var previews: some View {
//        BookDetailView()
//    }
//}



//let names = ["Holly", "Josh", "Rhonda", "Ted"]
//@State private var searchText = ""
//
//var searchResults: [String] {
//    if searchText.isEmpty {
//        return names
//    } else {
//        return names.filter { $0.contains(searchText)}
//    }
//}

//List {
//    ForEach(searchResults, id: \.self) { name in
//        NavigationLink(destination: Text(name)) {
//            Text(name)
//        }
//    }
//}
//.searchable(text: $searchText)
//.navigationTitle("Contacts")


//
