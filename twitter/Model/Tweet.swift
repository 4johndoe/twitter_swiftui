//
//  Tweet.swift
//  twitter
//
//  Created by Bogdan Demchenko on 12.06.2022.
//

import Firebase
import FirebaseFirestoreSwift

struct Tweet: Identifiable, Decodable, Hashable {
    @DocumentID var id: String?
    let caption: String
    let timestamp: Timestamp
    let uid: String
    var likes: Int
    
    var user: User?
}
