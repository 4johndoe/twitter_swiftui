//
//  TweetViewModel.swift
//  twitter
//
//  Created by Bogdan Demchenko on 13.06.2022.
//

import Foundation

class TweetRowViewModel: ObservableObject {
    
    private let service = TweetService()
    let tweet: Tweet
    
    init(tweet: Tweet) {
        self.tweet = tweet
    }
    
    func likeTweet() {
        service.likeTweet()
    }
}
