//
//  UserService.swift
//  twitter
//
//  Created by Bogdan Demchenko on 12.06.2022.
//

import Firebase

struct UserService {
    
    func fetchUser(withUid uid: String) {
        Firestore.firestore().collection("users")
            .document(uid)
            .getDocument { snapshot, _ in
                guard let data = snapshot?.data() else { return }
                
                print("DEBUG: User data is \(data)")
            }
    }
}
