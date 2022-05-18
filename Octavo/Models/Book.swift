//
//  Book.swift
//  Octavo
//
//  Created by Matt Eilar on 5/13/22.
//

import Foundation

struct Book: Identifiable {
    var id: UUID
    var title: String
    var authorFirst: String
    var authorLast: String
    var genres: [Genre]
    var pageCount: Int
    var dateAdded: Date
    var dateRead: Date
    var userRating: Double
    var userReview: String

    init(id: UUID = UUID(),
         title: String,
         authorFirst: String,
         authorLast: String,
         genres: [String],
         pageCount: Int,
         dateAdded: Date = Date(),
         dateRead: Date,
         userRating: Double,
         userReview: String) {
        self.id = id
        self.title = title
        self.authorFirst = authorFirst
        self.authorLast = authorLast
        self.genres = genres.map { Genre(name: $0) }
        self.pageCount = pageCount
        self.dateAdded = dateAdded
        self.dateRead = dateRead
        self.userRating = userRating
        self.userReview = userReview
    }
}


extension Book {
    struct Genre: Identifiable {
        let id: UUID
        var name: String
        
        init(id: UUID = UUID(), name: String) {
            self.id = id
            self.name = name
        }
    }
    
    struct Data {
        var title: String = ""
        var authorFirst: String = ""
        var authorLast: String = ""
        var genres: [Genre] = []
        var pageCount: Int = 0
        var dateAdded: Date = Date(timeIntervalSinceReferenceDate: 1)
        var dateRead: Date = Date(timeIntervalSinceReferenceDate: 1)
        var userRating: Double = 0.0
        var userReview: String = ""
    }
      
    var data: Data {
    Data(title:title,
         authorFirst:authorFirst,
         authorLast:authorLast,
         genres: genres,
         pageCount: pageCount,
         dateAdded: dateAdded,
         dateRead:dateRead,
         userRating:userRating,
         userReview: userReview)
    }
    
    mutating func update(from data: Data) {
        title = data.title
        authorFirst = data.authorFirst
        authorLast = data.authorLast
        genres = data.genres
        pageCount = data.pageCount
        dateRead = data.dateRead
        userRating = data.userRating
        userReview = data.userReview
    }
    
    init(data: Data) {
        id = UUID()
        title = data.title
        authorFirst = data.authorFirst
        authorLast = data.authorLast
        genres = data.genres
        pageCount = data.pageCount
        dateRead = data.dateRead
        userRating = data.userRating
        userReview = data.userReview
        dateAdded = Date()
    }
}
 
extension Book {
    static let sampleData: [Book] =
    [
        Book(title: "The Sun Also Rises", authorFirst: "Ernest", authorLast: "Hemingway", genres: ["Fiction", "Men", "Bullfighting"], pageCount: 230, dateRead: Date(timeIntervalSinceReferenceDate: 672055200), userRating: 3.5, userReview: "This book made me cry and want to order a split of champagne."),
        Book(title: "A Tree Grows in Brooklyn", authorFirst: "Betty", authorLast: "Smith", genres: ["Fiction", "New York", "Alcoholism"], pageCount: 300, dateRead: Date(timeIntervalSinceReferenceDate: 658650600), userRating: 4.5, userReview: "This book reminded me of my mother."),
        Book(title: "Where the Sidewalk Ends", authorFirst: "Shel", authorLast: "Silverstein", genres: ["Poetry", "Whimsy", "Sexy Writers"], pageCount: 76, dateRead: Date(timeIntervalSinceReferenceDate: 176625000), userRating: 5.0, userReview: "This book made me wanna smoke some grass and watch The Electric Company.")
    ]
}
