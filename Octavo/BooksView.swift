//
//  BooksView.swift
//  Octavo
//
//  Created by Matt Eilar on 5/13/22.
//

import SwiftUI

struct BooksView: View {
    @Binding var books: [Book]
    
    var body: some View {
        List {
            ForEach($books) { $book in
                NavigationLink(destination: BookDetailView(book: $book)) {
                    CardView(book: book)
                }

            }
        }
        .navigationTitle("Book List")
        .toolbar {
            Button(action: {}) {
                Image(systemName: "plus")
            }
            .accessibilityLabel("new book")
        }
    }
}

struct BooksView_Previews: PreviewProvider {
    static var previews: some View {
        BooksView(books: .constant(Book.sampleData))
    }
}
