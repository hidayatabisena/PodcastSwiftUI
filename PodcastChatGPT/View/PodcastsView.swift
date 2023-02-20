//
//  PodcastsView.swift
//  PodcastChatGPT
//
//  Created by Hidayat Abisena on 20/02/23.
//

import SwiftUI

struct PodcastsView: View {
    
    @ObservedObject var viewModel = PodcastsViewModel()
    
    var body: some View {
        NavigationView {
            List(viewModel.podcasts) { podcast in
                NavigationLink(destination: PodcastDetailView(podcast: podcast)) {
                    PodcastRow(podcast: podcast)
                }
            }
            .navigationTitle("Podcasts")
        }
        .onAppear {
            viewModel.fetchPodcasts()
        }
    }
}


struct PodcastsView_Previews: PreviewProvider {
    static var previews: some View {
        PodcastsView()
    }
}
