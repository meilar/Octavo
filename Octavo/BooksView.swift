//
//  BooksView.swift
//  Octavo
//
//  Created by Matt Eilar on 5/13/22.
//

import SwiftUI

struct BooksView: View {
    let books: [Book]
    
    var body: some View {
        List {
            ForEach(books, id: \.id) { book in
                CardView(book: book)
            }
        }
    }
}

struct BooksView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            BooksView(books: Book.sampleData)
            BooksView(books: Book.sampleData)
            BooksView(books: Book.sampleData)
        }
    }
}
