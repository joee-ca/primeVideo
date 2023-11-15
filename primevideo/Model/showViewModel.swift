//
//  showViewModel.swift
//  primevideo
//
//  Created by Giuseppe Casillo on 14/11/23.
//

import Foundation

class showViewModel{
    var shows: [Show] = [
        Show(type: "series", name: "Invincible", cover: "Invincible", cover2: "Invincible2", original: true, genres: ["action", "fantasy","superheroes"]),
        Show(type: "series", name: "Prova Prova sasa", cover: "Prova prova sasa", cover2: "prova prova sasa 2",original: true, genres: ["comedy"]),
        Show(type: "series", name: "007", cover: "007", cover2: "placeholder", original: true, genres: ["action","thriller"]),
        Show(type: "series", name: "Upload", cover: "Upload", cover2: "Upload 2", original: true, genres: ["comedy", "fantasy"]),
        Show(type: "series", name: "The other Zoey", cover: "The other zoey", cover2: "the other zoey 2", original: true, genres: ["comedy", "teenager","romance"]),
        Show(type: "film", name: "Bruciasse il Cielo", cover: "Bruciasse il cielo", cover2: "bruciasse il cielo 2", original: true, genres: ["documentary", "music"]),
        Show(type: "film", name: "The Pope exorcist Zoey", cover: "The Pope's exorcist", cover2: "the pope exorcist 2", original: true, genres: ["horror", "thriller", "mistery"]),
        Show(type: "series", name: "Monterossi", cover: "Monterossi", cover2: "monterossi 2", original: true, genres: ["comedy"]),
        Show(type: "film", name: "65", cover: "65", cover2: "placeholder", original: true, genres: ["action", "sci-fi","thriller"]),
        Show(type: "film", name: "Therapy", cover: "Therapy", cover2: "therapy 2", original: true, genres: ["mistery", "horror"])
    ]
}
