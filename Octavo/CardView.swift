//
//  CardView.swift
//  Octavo
//
//  Created by Matt Eilar on 5/13/22.
//

import SwiftUI

struct CardView: View {
    
    let book: Book
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(book.title)
                .font(.headline)
                .padding(.leading, 20)
            Text("\(book.authorFirst) \(book.authorLast)")
                .font(.subheadline)
                .padding(.leading, 20)
                .padding(.bottom, 5)
            HStack {
                Label("\(book.dateRead.formatted(date: .long, time: .omitted))", systemImage: "calendar")
                    .font(.subheadline)
                    .padding(.leading, 20)
                Spacer()
                Label("\(book.pageCount) pages", systemImage: "book")
                    .font(.subheadline)
                    .padding(.trailing, 20)
            }
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var book = Book.sampleData[2]
    static var previews: some View {
        CardView(book: book)
    }
}
