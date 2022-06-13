//
//  TweetViewModel.swift
//  twitter
//
//  Created by Bogdan Demchenko on 13.06.2022.
//

import Foundation
import Firebase

class TweetRowViewModel: ObservableObject {
    @Published var tweet: Tweet
    private let service = TweetService()
    
    init(tweet: Tweet) {
        self.tweet = tweet
    }
    
    func likeTweet() {
        service.likeTweet(tweet) {
            self.tweet.didLike = true
        }
    }
}
