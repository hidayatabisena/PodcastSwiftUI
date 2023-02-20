//
//  PodcastsViewModel.swift
//  PodcastChatGPT
//
//  Created by Hidayat Abisena on 20/02/23.
//

import Foundation
import Alamofire
import SwiftyJSON

class PodcastsViewModel: ObservableObject {

    @Published var podcasts: [Podcast] = []

    func fetchPodcasts() {
        let endpointUrl = "https://itunes.apple.com/search"
        let parameters = ["media": "podcast", "term": "swift"]

        AF.request(endpointUrl, method: .get, parameters: parameters)
            .validate()
            .responseJSON { response in
                switch response.result {
                case .success(let value):
                    let json = JSON(value)
                    let podcastResults = json["results"].arrayValue

                    var parsedPodcasts: [Podcast] = []
                    let dateFormatter = DateFormatter()
                    dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
                    for result in podcastResults {
                        let name = result["collectionName"].stringValue
                        let artworkUrl = result["artworkUrl100"].stringValue
                        let artistName = result["artistName"].stringValue
                        let genre = result["primaryGenreName"].stringValue

                        let releaseDateString = result["releaseDate"].stringValue
                        let releaseDate = dateFormatter.date(from: releaseDateString) ?? Date()

                        let podcast = Podcast(name: name, artworkUrl: artworkUrl, artistName: artistName, genre: genre, releaseDate: releaseDate.formatted(.dateTime.month().day().year()))
                        parsedPodcasts.append(podcast)
                    }

                    self.podcasts = parsedPodcasts

                case .failure(let error):
                    print(error)
                }
            }
    }
}

