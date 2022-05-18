//
//  BooksView.swift
//  Octavo
//
//  Created by Matt Eilar on 5/13/22.
//

import SwiftUI

struct BooksView: View {
    @Binding var books: [Book]
    @State private var isPresentingNewBookView = false
    @State private var newBookData = Book.Data()
    
    var body: some View {
        List {
            ForEach($books) { $book in
                NavigationLink(destination: BookDetailView(book: $book)) {
                    CardView(book: book)
                }

            }
        }.padding(.top, 40)
        .navigationTitle("Book List")
        .toolbar {
            Button(action: {isPresentingNewBookView = true }) {
                Image(systemName: "plus")
            }
            .accessibilityLabel("new book")
        }
        .sheet(isPresented: $isPresentingNewBookView) {
            NavigationView {
                BookEditView(data: $newBookData)
                    .toolbar {
                        ToolbarItem(placement: .cancellationAction) {
                            Button("Cancel") {
                                isPresentingNewBookView = false
                                newBookData = Book.Data()
                            }
                        }
                        ToolbarItem(placement: .confirmationAction) {
                            Button("Add") {
                                let newBook = Book(data: newBookData)
                                books.append(newBook)
                                isPresentingNewBookView = false
                                newBookData = Book.Data()
                            }
                        }
                    }
            }
        }
    }
}

struct BooksView_Previews: PreviewProvider {
    static var previews: some View {
        BooksView(books: .constant(Book.sampleData))
    }
}
