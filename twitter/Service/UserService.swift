//
//  UserService.swift
//  twitter
//
//  Created by Bogdan Demchenko on 12.06.2022.
//

import Firebase
import FirebaseFirestoreSwift

struct UserService {
    
    func fetchUser(withUid uid: String, completion: @escaping(User) -> Void) {
        Firestore.firestore().collection("users")
            .document(uid)
            .getDocument { result, _ in
                guard let result = result else { return }
                
                guard let user = try? result.data(as: User.self) else { return }
                
                completion(user)
            }
    }
    
    func fetchUsers(completion: @escaping([User]) -> Void) {
        Firestore.firestore().collection("users")
            .getDocuments { results, _ in
                guard let documents = results?.documents else { return }
                let users = documents.compactMap({ try? $0.data(as: User.self) })
                completion(users)
            }
    }
}
