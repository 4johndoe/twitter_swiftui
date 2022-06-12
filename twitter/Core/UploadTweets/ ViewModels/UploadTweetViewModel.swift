//
//  UploadTweetViewModel.swift
//  twitter
//
//  Created by Bogdan Demchenko on 12.06.2022.
//

import Foundation

class UploadTweetViewModel: ObservableObject {
    @Published var didUploadTweet = false
    let service = TweetService()
    
    func uploadTweet(withCaption caption: String) {
        service.uploadTweet(caption: caption) { success in
            if success {
                // dismess screen somehow
                self.didUploadTweet = true
            } else {
                // show error message to user...
            }
        }
    }
}
