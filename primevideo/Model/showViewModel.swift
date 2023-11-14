//
//  showViewModel.swift
//  primevideo
//
//  Created by Giuseppe Casillo on 14/11/23.
//

import Foundation

class showViewModel{
    var shows: [Show] = [
        Show(type: "series", name: "Invincible", cover: "Invincible", original: true, genres: ["action", "fantasy","superheroes"]),
        Show(type: "series", name: "Prova Prova sasa", cover: "Prova prova sasa", original: true, genres: ["comedy"]),
        Show(type: "series", name: "007", cover: "007", original: true, genres: ["action","thriller"]),
        Show(type: "series", name: "Upload", cover: "Upload", original: true, genres: ["comedy", "fantasy"]),
        Show(type: "series", name: "The other Zoey", cover: "The other zoey", original: true, genres: ["comedy", "teenager","romance"]),
        Show(type: "film", name: "Bruciasse il Cielo", cover: "Bruciasse il cielo", original: true, genres: ["documentary", "music"]),
        Show(type: "film", name: "The Pope exorcist Zoey", cover: "The Pope's exorcist", original: true, genres: ["horror", "thriller", "mistery"]),
        Show(type: "series", name: "Monterossi", cover: "Monterossi", original: true, genres: ["comedy"]),
        Show(type: "film", name: "65", cover: "65", original: true, genres: ["action", "sci-fi","thriller"]),
        Show(type: "film", name: "Therapy", cover: "Therapy", original: true, genres: ["mistery", "horror"])
    ]
}
