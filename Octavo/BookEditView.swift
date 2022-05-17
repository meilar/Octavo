//
//  BookEditView.swift
//  Octavo
//
//  Created by Matt Eilar on 5/16/22.
//

import SwiftUI

struct BookEditView: View {
    
    @Binding var data: Book.Data
    @State private var newGenreName = ""
    
    var body: some View {
        Form {
            Section(header: Text("Book Details")) {
                TextField("Title", text: $data.title)

                HStack {
                    TextField("AuthorFirst", text: $data.authorFirst)
                        .autocapitalization(.words)
                    TextField("AuthorLast", text: $data.authorLast)
                        .autocapitalization(.words)
                }

                HStack {
                    Text("Page Count")
                    TextField("Pages", value: $data.pageCount, formatter: NumberFormatter())
                        .keyboardType(.decimalPad)
                }

            }
            Section(header: Text("Genre")) {
                ForEach(data.genres) { genre in
                    Text(genre.name)
                }
                .onDelete { indices in
                    data.genres.remove(atOffsets: indices)
            }
            HStack {
                TextField("Add Genre", text: $newGenreName)
                    .autocapitalization(.words)
                Button(action: {
                    withAnimation {
                        let genre = Book.Genre(name: newGenreName)
                        data.genres.append(genre)
                    }
                }) {
                    Image(systemName: "plus.circle.fill")
                        .accessibilityLabel("add genre")
                }
                .disabled(newGenreName.isEmpty)
            }
        }
            Section(header: Text("Reading Log")) {
                DatePicker("Date Read", selection: $data.dateRead, displayedComponents: [.date])
                HStack {
                    Slider(value: $data.userRating, in: 1...5, step: 0.25) {
                        Text("Rating")
                    }
                    Spacer()
                    Text("Rating: \(Double(data.userRating).formatted())")
                        .padding(.leading)
                }
                ZStack {
                TextEditor(text: $data.userReview)
                Text("").opacity(0).padding(.all, 8)
                }
                .shadow(radius:1)
            }

    }
    }
}

struct BookEditView_Previews: PreviewProvider {
    static var previews: some View {
        BookEditView(data: .constant(Book.sampleData[2].data))
    }
}
