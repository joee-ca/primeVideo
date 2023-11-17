//
//  showViewModel.swift
//  primevideo
//
//  Created by Giuseppe Casillo on 14/11/23.
//

import Foundation


// The movie Database
class showViewModel{
    var shows: [Show] = [
        Show(type: "series", name: "Invincible", cover: "Invincible", cover2: "Invincible2", original: true, genres: ["action", "fantasy","superheroes"]),
        Show(type: "series", name: "Prova Prova sasa", cover: "Prova prova sasa", cover2: "prova prova sasa 2",original: true, genres: ["comedy"]),
        Show(type: "series", name: "007", cover: "007", cover2: "placeholder", original: true, genres: ["action","thriller"]),
        Show(type: "film", name: "", cover: "", cover2: "Godzilla - king of the monsters", original: false, genres: ["action", "fantasy", "thriller"]),
        Show(type: "series", name: "The boys", cover: "the boys", cover2: "the boys 2", original: true, genres: ["action", "fantasy", "superheroes", "splatter"]),
        Show(type: "series", name: "The other Zoey", cover: "The other zoey", cover2: "the other zoey 2", original: true, genres: ["comedy", "teenager","romance"]),
        Show(type: "film", name: "Bruciasse il Cielo", cover: "Bruciasse il cielo", cover2: "bruciasse il cielo 2", original: true, genres: ["documentary", "music"]),
        Show(type: "film", name: "Spiderman 2", cover: "", cover2: "Spiderman 2", original: false, genres: ["action", "fantasy", "superheroes"]),
        Show(type: "film", name: "Guardians of the galaxy", cover: "", cover2: "Guardians of the galaxy", original: false, genres: ["action", "fantasy", "comedy", "superheroes"]),
        Show(type: "film", name: "The Pope exorcist Zoey", cover: "The Pope's exorcist", cover2: "the pope exorcist 2", original: true, genres: ["horror", "thriller", "mistery"]),
        Show(type: "series", name: "Monterossi", cover: "Monterossi", cover2: "monterossi 2", original: true, genres: ["comedy"]),
        Show(type: "film", name: "65", cover: "65", cover2: "placeholder", original: true, genres: ["action", "sci-fi","thriller"]),
        Show(type: "film", name: "Therapy", cover: "Therapy", cover2: "therapy 2", original: true, genres: ["mistery", "horror"]),
        Show(type: "film", name: "Tron legacy", cover: "", cover2: "Tron legacy", original: false, genres: ["action", "fantasy"]),
        Show(type: "film", name: "The girl who got away", cover: "", cover2: "The girl who got away", original: false, genres: ["horror", "splatter"]),
        Show(type: "film", name: "Oppenheimer", cover: "", cover2: "Oppenheimer", original: false, genres: ["drama", "thriller"]),
        Show(type: "series", name: "Lost", cover: "", cover2: "Lost", original: false, genres: ["action", "drama"]),
        Show(type: "film", name: "Green lantern", cover: "", cover2: "Green lantern", original: false, genres: ["action", "fantasy", "superheroes"]),
        Show(type: "series", name: "Upload", cover: "Upload", cover2: "Upload 2", original: true, genres: ["comedy", "fantasy"]),
        Show(type: "film", name: "Ant-man", cover: "", cover2: "Ant-man", original: false, genres: ["action", "fantasy", "superheroes"])
    ]
}
