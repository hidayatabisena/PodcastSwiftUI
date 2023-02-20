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
    let websiteUrl = "https://iswift.mayar.link"
    
    var body: some View {
        VStack(alignment: .leading) {
            KFImage(URL(string: podcast.artworkUrl))
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 200)
            Text(podcast.name)
                .font(.title)
                .padding(.top, 20)
            Text(podcast.artistName)
                .font(.headline)
                .foregroundColor(.gray)
            Text(podcast.genre)
                .font(.headline)
                .padding(.top, 5)
            Text(podcast.releaseDate)
                .font(.headline)
                .foregroundColor(.gray)
                .padding(.top, 5)
                .padding(.bottom, 10)
            
            ZStack {
                Rectangle()
                    .foregroundColor(.purple)
                    .frame(width: 300, height: 56)
                    .cornerRadius(8)
                
                if let url = URL(string: websiteUrl) {
                    Link(destination: url) {
                        Text("Visit iSwift iOS Academy")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                    }
                }
            }
            
            
            Spacer()
        }
        .padding()
        .navigationBarTitle(Text("Details"), displayMode: .inline)
    }
}



