//
//  PokeImage.swift
//  PokiAPIGallery
//
//  Created by
//balajichandupatla1@gmail.com
//A00245077

//nutakki.shivaramakrishna99@gmail.com
//A00245380

//A00245384 - rohith.god1997@gmail.com
//A00245382 - Alekhyachowdary605@gmail.com

//kavyach23@gmail.com
//A00246628

import Foundation

struct Pokemons: Codable{
    var results: [Pokemon]
}

struct Pokemon: Codable{
    var url: String
}

struct PokeImage: Codable{
    var sprites: Sprite!
}

struct Sprite: Codable{
    var front_default: String
}
