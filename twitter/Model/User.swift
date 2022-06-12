//
//  User.swift
//  twitter
//
//  Created by Bogdan Demchenko on 12.06.2022.
//

import FirebaseFirestoreSwift

struct User: Identifiable, Decodable, Hashable {
    @DocumentID var id: String?
    let username: String
    let fullname: String
    let profileImageUrl: String
    let email: String
    
//    let tweets
}
