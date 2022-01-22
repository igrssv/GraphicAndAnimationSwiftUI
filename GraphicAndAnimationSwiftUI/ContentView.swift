//
//  ContentView.swift
//  GraphicAndAnimationSwiftUI
//
//  Created by Игорь Сысоев on 21.01.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            PlayAnimationView()
                .tabItem {
                    Image(systemName: "play.circle")
                }
            ItemGraphicView()
                .tabItem {
                    Image(systemName: "photo")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
