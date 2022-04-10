//
//  Article.swift
//  newsfeedSkeleton
//
//  Created by Antoine Lavoie on 4/9/22.
//

import Foundation

struct ArticleResponse: Codable {
    let articles: [Article]
}

struct Article: Codable, Identifiable {
    let id: UUID = UUID()
    var author: String?
    var url: String
    var source: String?
    var title: String?
    var welcomeDescription: String?
    let image: String?
    let date: Date?

    enum CodingKeys: String, CodingKey {
        case author, url, source, title, image, date
        case articleDescription = "description"
    }
}
