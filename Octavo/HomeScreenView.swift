//
//  SwiftUIView.swift
//  Octavo
//
//  Created by Matt Eilar on 5/13/22.
//

import SwiftUI

struct HomeScreenView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.purple, .black, .mint]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("Octavo")
                    .font(.system(size:48, weight: .light, design: .serif))
                    .foregroundColor(.white)
                HStack {
                    RoundedRectangle(cornerRadius:10, style: .continuous).stroke(Color.white, lineWidth: 2)
                        .padding()
                        .frame(width: 150, height: 100, alignment: .topLeading)
                        .overlay(
                            Text("Reading Log")
                                .foregroundColor(.white)
                        )
                }
                HStack {
                    RoundedRectangle(cornerRadius:10, style: .continuous).stroke(Color.white, lineWidth: 2)
                        .padding()
                        .frame(width: 150, height: 100, alignment: .topLeading)
                        .overlay(
                            Text("Book List")
                                .foregroundColor(.white)
                        )
                }
            }
            .padding()
    
        }

    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()
    }
}
