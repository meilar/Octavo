//
//  BookDetailView.swift
//  Octavo
//
//  Created by Matt Eilar on 5/16/22.
//

import SwiftUI

struct BookDetailView: View {
    
    @Binding var book: Book
    
    @State private var data = Book.Data()
    @State private var isPresentingEditView = false
    
    var body: some View {
        List {
            Section(header: Text("Book Details")) {
                HStack {
                    Label("\(book.title)", systemImage: "books.vertical")
                }
                HStack {
                    Label("\(book.authorFirst) \(book.authorLast)", systemImage: "person")
                }
                HStack {
                    Label("\(book.pageCount) pages", systemImage: "book")
                }
            }
            Section(header: Text("Genres")) {
                ForEach(book.genres) { genre in
                    Label(genre.name, systemImage: "grid.circle")
                }
            }
            Section(header: Text("Log")) {
                HStack {
                    Label("Added \(book.dateAdded.formatted(date: .long, time: .omitted))", systemImage: "bookmark")
                }
                HStack {
                    Label("Read \(book.dateRead.formatted(date: .long, time: .omitted))", systemImage: "bookmark.fill")
                }
                HStack {
                    Label("Rating: \(book.userRating.formatted())", systemImage: "star.fill")
                }
                HStack {
                    Label("Review: \(book.userReview)", systemImage: "hand.thumbsup")
                }
            }
        }
        .navigationTitle("Details")
        .toolbar {
            Button("Edit") {
                isPresentingEditView = true
                data = book.data
            }
        }
        .sheet(isPresented: $isPresentingEditView) {
            NavigationView {
                BookEditView(data: $data)
                    .navigationTitle(book.title)
                    .toolbar {
                        ToolbarItem(placement: .cancellationAction) {
                        Button("Cancel") {
                            isPresentingEditView = false
                        }
                    }
                    ToolbarItem(placement: .confirmationAction) {
                        Button("Done") {
                            book.update(from: data)
                            isPresentingEditView = false
                        }
                    }
                }
            }
        }
    }
}

struct BookDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            BookDetailView(book: .constant(Book.sampleData[0]))
        }
    }
}
