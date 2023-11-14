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
    public let original: Bool
    public let genres: [String]
    
    init(type: String, name: String, cover: String, original: Bool, genres: [String]) {
        self.id = UUID()
        self.type = type
        self.name = name
        self.cover = cover
        self.original = original
        self.genres = genres
    }
    
}
