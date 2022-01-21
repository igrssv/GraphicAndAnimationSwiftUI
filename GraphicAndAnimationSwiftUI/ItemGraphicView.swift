//
//  ItemGraphicView.swift
//  GraphicAndAnimationSwiftUI
//
//  Created by Игорь Сысоев on 21.01.2022.
//

import SwiftUI

struct ItemGraphicView: View {
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

struct ItemGraphicView_Previews: PreviewProvider {
    static var previews: some View {
        ItemGraphicView()
    }
}
