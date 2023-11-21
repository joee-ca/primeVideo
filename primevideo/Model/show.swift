//
//  show.swift
//  primevideo
//
//  Created by Giuseppe Casillo on 14/11/23.
//

import Foundation
import SwiftUI

class Show: Identifiable{
    let id: UUID
    public let type: String
    public let name: String
    public let cover: String
    public let cover2: String
    public let original: Bool
    public let genres: [String]
    public var topTenPosition: Int
    public let actors: [String]
    
    init(type: String, name: String, cover: String, cover2: String, original: Bool, genres: [String], topTenPosition: Int, actors: [String]) {
        self.id = UUID()
        self.type = type
        self.name = name
        self.cover = cover
        self.cover2 = cover2
        self.original = original
        self.genres = genres
        self.topTenPosition = topTenPosition
        self.actors = actors
    }
    
    func printGenres() -> String{
        var fullString = ""
        for genre in genres {
            fullString += genre + ", "
        }
        fullString.removeLast(2)
        return fullString
    }
    
    func printActors() -> String{
        var fullString = ""
        for actor in actors {
            fullString += actor + ", "
        }
        fullString.removeLast(2)
        return fullString
    }
    
}
