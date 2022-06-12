//
//  ExploreViewModel.swift
//  twitter
//
//  Created by Bogdan Demchenko on 12.06.2022.
//

import Foundation

class ExploreViewModel: ObservableObject {
    @Published var users = [User]()
    let service = UserService()
    
    init() {
        self.fetchUsers()
    }
    
    func fetchUsers() {
        service.fetchUsers {users in
            self.users = users
            
            print("DEBUG: Users \(users)")
        }
    }
}
