//
//  ExploreView.swift
//  twitter
//
//  Created by Bogdan Demchenko on 05.06.2022.
//

import SwiftUI

struct ExploreView: View {
    @ObservedObject var viewModel = ExploreViewModel()
    
    var body: some View {
            VStack {
                ScrollView {
                    LazyVStack {
                        ForEach(viewModel.users, id: \.self) {user in
                            NavigationLink {
                                ProfileView(user: user)
                            } label: {
                                UserRowView(user: user)
                            }

                        }
                    }
                }
            }
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
    }
}
