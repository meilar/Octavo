//
//  Book.swift
//  Octavo
//
//  Created by Matt Eilar on 5/13/22.
//

import Foundation

struct Book {
    var id: Int
    var title: String
    var authorFirst: String
    var authorLast: String
    var genres: [String]
    var pageCount: Int
    var dateRead: Date
}

extension Book {
    static let sampleData: [Book] =
    [
        Book(id: 1, title: "The Sun Also Rises", authorFirst: "Ernest", authorLast: "Hemingway", genres: ["fiction", "men", "bullfighting"], pageCount: 230, dateRead: Date(timeIntervalSinceReferenceDate: 672055200)),
        Book(id: 2, title: "A Tree Grows in Brooklyn", authorFirst: "Betty", authorLast: "Smith", genres: ["fiction", "new york", "alcoholism"], pageCount: 300, dateRead: Date(timeIntervalSinceReferenceDate: 672045100)),
        Book(id: 3, title: "Where the Sidewalk Ends", authorFirst: "Shel", authorLast: "Silverstein", genres: ["poetry", "childrens", "sexy writers"], pageCount: 76, dateRead: Date(timeIntervalSinceReferenceDate: 672022750))
    ]
}
