//
//  Podcast.swift
//  PodcastChatGPT
//
//  Created by Hidayat Abisena on 20/02/23.
//

import Foundation

struct Podcast: Identifiable {
    var id = UUID()
    let name: String
    let artworkUrl: String
    let artistName: String
    let genre: String
    let releaseDate: String
}
