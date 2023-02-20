//
//  PodcastsDetailView.swift
//  PodcastChatGPT
//
//  Created by Hidayat Abisena on 20/02/23.
//

import SwiftUI
import Kingfisher

struct PodcastDetailView: View {
    
    let podcast: Podcast
    
    var body: some View {
        VStack {
            KFImage(URL(string: podcast.artworkUrl))
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 200)
            Text(podcast.name)
                .font(.largeTitle)
                .padding()
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}



