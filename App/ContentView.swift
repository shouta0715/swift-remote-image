//
//  ContentView.swift
//  remote-image
//
//  Created by k21047kk on 2024/12/28.
//

import SwiftUI

struct ContentView: View {
    
    private let imageURL:String = "https://credo.academy/credo-academy@3x.png"
    
    
    var body: some View {
        
//        1. Basic
//        AsyncImage(url:URL(string: imageURL))
        
//        2. scale Image
//        AsyncImage(url:URL(string: imageURL),scale: 3.0)
        
//        3. 3. PlaceHolder
        AsyncImage(url: URL(string:imageURL)){image in
            image.resizable().scaledToFit()
        } placeholder: {
            Image(systemName: "photo.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: 128)
                .foregroundColor(.purple).opacity(0.5)
        }.padding(40)
        
    }
}

#Preview {
    ContentView()
}
