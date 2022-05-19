//
//  SwiftUIView.swift
//  Octavo
//
//  Created by Matt Eilar on 5/13/22.
//

import SwiftUI

struct HomeScreenView: View {
    
    @Binding var books: [Book]
    
    var body: some View {
        ZStack {
//            LinearGradient(gradient: Gradient(colors: [.purple, .black, .mint]), startPoint: .topLeading, endPoint: .bottomTrailing)
//                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("Octavo")
                    .font(.system(size:48, weight: .semibold, design: .serif))
                    .foregroundStyle(
                    LinearGradient(
                        colors: [.green, .blue],
                        startPoint: .leading,
                        endPoint: .trailing
                    ))
                Spacer()
                Image("Logo").resizable().scaledToFit().frame(width: 300, height: 300, alignment: .center)
                
                
                HStack {
                    RoundedRectangle(cornerRadius:10, style: .continuous).stroke(Color.green, lineWidth: 2)
                        .padding()
                        .frame(width: 200, height: 100, alignment: .topLeading)
                        .overlay(
                            NavigationLink(destination: BooksView(books: $books)) {
                                Text("Book List")
                                    .foregroundStyle(
                                    LinearGradient(
                                        colors: [.green, .blue],
                                        startPoint: .leading,
                                        endPoint: .trailing
                                    ))
                            }
                        )
                }
                HStack {
                    RoundedRectangle(cornerRadius:10, style: .continuous).stroke(Color.blue, lineWidth: 2)
                        .padding()
                        .frame(width: 200, height: 100, alignment: .topLeading)
                        .overlay(
                            NavigationLink(destination: UserDetailView(books: $books)) {
                                Text("Reading Statistics")
                                    .foregroundStyle(
                                    LinearGradient(
                                        colors: [.green, .blue],
                                        startPoint: .leading,
                                        endPoint: .trailing
                                    ))
                            }
                        )
                }
            }
            .padding()
    
        }

    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView(books: .constant(Book.sampleData))
    }
}
