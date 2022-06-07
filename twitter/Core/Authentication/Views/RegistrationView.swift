//
//  RegistrationView.swift
//  twitter
//
//  Created by Bogdan Demchenko on 07.06.2022.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var username = ""
    @State private var fullname = ""
    @State private var password = ""
    
    var body: some View {
        VStack {
            // header
            AuthHeaderView(title1: "Get started.", title2: "Create your account.")
            
            VStack(spacing: 40){
                CustomInputField(imageName: "envelope",
                                 placeHolderText: "Email",
                                 text: $email)
                
                CustomInputField(imageName: "person",
                                 placeHolderText: "Username",
                                 text: $username)
                
                CustomInputField(imageName: "person",
                                 placeHolderText: "Fullname",
                                 text: $fullname)
                
                CustomInputField(imageName: "lock",
                                 placeHolderText: "Password",
                                 text: $password)
            }
            .padding(32)
            
            Spacer()
        }.ignoresSafeArea()
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
