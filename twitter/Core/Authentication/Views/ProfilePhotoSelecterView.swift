//
//  PhotoSelecterView.swift
//  twitter
//
//  Created by Bogdan Demchenko on 10.06.2022.
//

import SwiftUI

struct ProfilePhotoSelecterView: View {
    @State private var showImagePicker = false
    @State private var selectedImage: UIImage?
    @State private var profileImage: Image?
    
    var body: some View {
        VStack{
            AuthHeaderView(title1: "Setup account",
                           title2: "Select a profile photo")
            
            Button {
                showImagePicker.toggle()
            } label: {
                if let profileImage = profileImage {
                    profileImage
                        .resizable()
                        .scaledToFill()
                        .clipShape(Circle())
                        .modifier(ProfileImageModifier())
                } else {
                    Image(systemName: "photo")
                        .resizable()
                        .scaledToFit()
                        .modifier(ProfileImageModifier())
                }
            }
            .sheet(isPresented: $showImagePicker,
                   onDismiss: loadImage) {
                ImagePicker(selectedImage: $selectedImage)
            }
            .padding(.top, 44)
            
            Spacer()
        }
        .ignoresSafeArea()
    }
    
    func loadImage() {
        guard let selectedImage = selectedImage else { return }
        profileImage = Image(uiImage: selectedImage)
    }
}

private struct ProfileImageModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(Color(.systemBlue))
            .frame(width: 160, height: 160)
    }
}

struct PhotoSelecterView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePhotoSelecterView()
    }
}
