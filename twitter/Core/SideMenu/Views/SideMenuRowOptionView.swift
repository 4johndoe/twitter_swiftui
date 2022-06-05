//
//  SideMenuRowOptionView.swift
//  twitter
//
//  Created by Bogdan Demchenko on 05.06.2022.
//

import SwiftUI

struct SideMenuRowOptionView: View {
    var viewModel: SideMenuViewModel
    
    var body: some View {
        HStack(spacing: 16){
            Image(systemName: viewModel.imageName)
                .font(.headline)
                .foregroundColor(.gray)
            
            Text(viewModel.title)
                .foregroundColor(.black)
                .font(.subheadline)
            
            Spacer()
        }
        .frame(height: 40)
        .padding(.horizontal)
    }
}

struct SideMenuRowOptionView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuRowOptionView(viewModel: .profile)
    }
}
