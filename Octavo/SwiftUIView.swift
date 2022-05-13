//
//  UserDetailView.swift
//  Octavo
//
//  Created by Matt Eilar on 5/13/22.
//

import SwiftUI

struct UserDetailView: View {
    var body: some View {
        VStack{
            Spacer()
            Text("Your Reading By the Numbers")
                .font(.system(size:24, weight: .light, design: .serif))
            Spacer()
            Group {
                Text("Pages")
                    .font(.headline)
                Text("240 all time pages read")
                    .font(.subheadline)
                Text("100 pages read this month")
                    .font(.subheadline)
                Text("240 pages: six month rolling average")
                    .font(.subheadline)
            }
            Spacer()
            Group {
                Text("Books")
                    .font(.headline)
                Text("12 all time books read")
                    .font(.subheadline)
                Text("8 books read this month")
                    .font(.subheadline)
                Text("2 books: six month rolling average")
                    .font(.subheadline)
            }
            Spacer()
            Group {
                Text("Interests")
                    .font(.headline)
                Text("Favorite Genre: Sci-fi")
                    .font(.subheadline)
                Text("Highest Rated Author: Ursula LeGuin")
                    .font(.subheadline)
                Text("Lowest Rated Author: Christopher Paolini")
                    .font(.subheadline)
            }
            Spacer()
        }
    }
}

struct UserDetailView_Previews: PreviewProvider {
    static var previews: some View {
        UserDetailView()
    }
}
