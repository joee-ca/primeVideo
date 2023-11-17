//
//  show.swift
//  primevideo
//
//  Created by Giuseppe Casillo on 14/11/23.
//

import Foundation


class Show: Identifiable{
    let id: UUID
    public let type: String
    public let name: String
    public let cover: String
    public let cover2: String
    public let original: Bool
    public let genres: [String]
    public var topTenPosition: Int
    
    init(type: String, name: String, cover: String, cover2: String, original: Bool, genres: [String], topTenPosition: Int) {
        self.id = UUID()
        self.type = type
        self.name = name
        self.cover = cover
        self.cover2 = cover2
        self.original = original
        self.genres = genres
        self.topTenPosition = topTenPosition
    }
    
}
