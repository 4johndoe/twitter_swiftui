//
//  PhotoSelecterView.swift
//  twitter
//
//  Created by Bogdan Demchenko on 10.06.2022.
//

import SwiftUI

struct ProfilePhotoSelecterView: View {
    var body: some View {
        VStack{
            AuthHeaderView(title1: "Create yout account",
                           title2: "Select a profile photo")
            
            Button {
                print("Pick image here")
            } label: {
                Image(systemName: "photo")
                    .resizable()
                    .renderingMode(.template)
//                    .foregroundColor(Color(.systemBlue))
                    .scaledToFill()
                    .frame(width: 180, height: 180)
                    .padding(.top, 44)
            }
            
            Spacer()
        }
        .ignoresSafeArea()
    }
}

struct PhotoSelecterView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePhotoSelecterView()
    }
}
