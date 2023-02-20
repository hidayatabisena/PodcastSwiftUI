//
//  PodcastRow.swift
//  PodcastChatGPT
//
//  Created by Hidayat Abisena on 20/02/23.
//

import SwiftUI
import Kingfisher

struct PodcastRow: View {
    
    let podcast: Podcast
    
    var body: some View {
        HStack {
            KFImage(URL(string: podcast.artworkUrl))
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
            Text(podcast.name)
                .font(.headline)
        }
    }
}


