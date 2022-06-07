//
//  NewTweetView.swift
//  twitter
//
//  Created by Bogdan Demchenko on 07.06.2022.
//

import SwiftUI

struct NewTweetView: View {
    var body: some View {
        VStack {
            HStack{
                Button {
                    print("cancel")
                } label: {
                    Text("Cancel")
                        .foregroundColor(Color(.systemBlue))
                }

                Spacer()
                
                Button {
                    print("tweet")
                } label: {
                    Text("Tweet")
                        .padding(.horizontal)
                        .padding(.vertical, 8)
                        .background(Color(.systemBlue))
                        .foregroundColor(.white)
                     
                }
            }
            
            Spacer()
            
            HStack{
                
            }
        }
    }
}

struct NewTweetView_Previews: PreviewProvider {
    static var previews: some View {
        NewTweetView()
    }
}
