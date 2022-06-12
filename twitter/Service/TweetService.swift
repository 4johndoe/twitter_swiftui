//
//  TweetService.swift
//  twitter
//
//  Created by Bogdan Demchenko on 12.06.2022.
//

import Firebase

struct TweetService{
    
    func uploadTweet(caption: String, completion: @escaping(Bool) -> Void) {
        guard let uid = Auth.auth().currentUser?.uid else { return }
        
        let data = ["uid": uid,
                    "caption": caption,
                    "likes": 0,
                    "timestamp": Timestamp(date: Date())] as [String : Any]
        
        Firestore.firestore().collection("tweets").document()
            .setData(data) { error in
                if let error = error {
                    print("DEBUG: failed to upload tweet with error: \(error.localizedDescription)")
                    completion(false)
                    return
                }
                
                completion(true)
            }
    }
}
