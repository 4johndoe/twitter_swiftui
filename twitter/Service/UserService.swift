//
//  UserService.swift
//  twitter
//
//  Created by Bogdan Demchenko on 12.06.2022.
//

import Firebase
import FirebaseFirestoreSwift

struct UserService {
    
    func fetchUser(withUid uid: String) {
        Firestore.firestore().collection("users")
            .document(uid)
            .getDocument { result, _ in
                guard let result = result else { return }
                
                guard let user = try? result.data(as: User.self) else { return }
                
                print("DEBUG: Username is \(user.username)")
                print("DEBUG: Email is \(user.email)")
            }
    }
}
