//
//  FeedViewModel.swift
//  twitter
//
//  Created by Bogdan Demchenko on 12.06.2022.
//

import Foundation

class FeedViewModel: ObservableObject {
    @Published var tweets = [Tweet]()
    let service = TweetService()
    
    init() {
        fetchTweets()
    }
    
    func fetchTweets() {
        service.fetchTweets { tweets in
            self.tweets = tweets
        }
    }
}
