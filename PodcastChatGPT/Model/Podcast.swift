//
//  Podcast.swift
//  PodcastChatGPT
//
//  Created by Hidayat Abisena on 20/02/23.
//

import Foundation

struct Podcast: Identifiable {
    let id = UUID()
    let name: String
    let artworkUrl: String
}
