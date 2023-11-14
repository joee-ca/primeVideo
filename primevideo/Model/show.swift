//
//  show.swift
//  primevideo
//
//  Created by Giuseppe Casillo on 14/11/23.
//

import Foundation


class Show: Identifiable{
    let id: UUID
    private let type: String
    private let name: String
    private let cover: String
    private let original: Bool
    private let genres: [String]
    
    init(type: String, name: String, cover: String, original: Bool, genres: [String]) {
        self.id = UUID()
        self.type = type
        self.name = name
        self.cover = cover
        self.original = original
        self.genres = genres
    }
    
}
