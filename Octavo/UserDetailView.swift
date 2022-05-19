//
//  UserDetailView.swift
//  Octavo
//
//  Created by Matt Eilar on 5/13/22.
//

import SwiftUI

struct UserDetailView: View {
    
    @Binding var books: [Book]

//    @StateObject var userPagesRead: Int {
//        var pages: Int = 0
//        for book in $books {
//            pages += book.pageCount
//            
//        }
//        return pages
//    }
    
    var body: some View {
        List {
            Section(header: Text("Reading Speed")) {
                HStack {
                    Label("100 pages read this month", systemImage: "hare")
                }
                HStack {
                    Label("240 pages read all time", systemImage: "infinity.circle")
                }
                HStack {
                    Label("Six month average: 240 pages", systemImage: "divide.square")
                }
            }
            Section(header: Text("Books Read")) {
                HStack {
                    Label("12 books read this month", systemImage: "book.closed")
                }
                HStack {
                    Label("50 books read all time", systemImage: "books.vertical.circle")
                }
                HStack {
                    Label("Six month average: 240 pages", systemImage: "divide.square")
                }
            }
            Section(header: Text("Your Interests")) {
                HStack {
                    Label("Favorite Genre: Sci-fi", systemImage: "atom")
                }
                HStack {
                    Label("Highest Rated Author: Ursula LeGuin", systemImage: "person")
                }
                HStack {
                    Label("Top Rated Book: The Dispossessed", systemImage: "1.square")
                }
            }
        }
        .navigationTitle("Your Reading Log")
        
    }

//            Group {
//                Text("Interests")
//                    .font(.headline)
//                Text("Favorite Genre: Sci-fi")
//                    .font(.subheadline)
//                Text("Highest Rated Author: Ursula LeGuin")
//                    .font(.subheadline)
//                Text("Lowest Rated Author: Christopher Paolini")
//                    .font(.subheadline)
//            }
//            Spacer()
//        }
//    }
//}

struct UserDetailView_Previews: PreviewProvider {
    static var previews: some View {
        UserDetailView(books: .constant(Book.sampleData))
        }
    }
}
